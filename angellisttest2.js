import { RemovalPolicy } from 'aws-cdk-lib';
import { BlockPublicAccess, BucketEncryption } from 'aws-cdk-lib/aws-s3';
import { Api, Bucket, Config, StackContext, Table } from 'sst/constructs';
export function APIStack({ stack }: StackContext) {
  const table = new Table(stack, 'LLMEvaluationTable', {
    fields: {
      jobId: 'string',
      service: 'string',
    },
    primaryIndex: { partitionKey: 'jobId', sortKey: 'service' },
    cdk: {
      table: {
        removalPolicy:
          stack.stage === 'prod' ? RemovalPolicy.RETAIN : RemovalPolicy.DESTROY,
        tableName: `${stack.stage}-llm-evaluation-table`,
      },
    },
  });
  const s3Bucket = new Bucket(stack, 'LLMEvaluationBucket', {
    cdk: {
      bucket: {
        bucketName: `${stack.stage}-llm-evaluation-bucket`,
        encryption: BucketEncryption.S3_MANAGED,
        blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
        publicReadAccess: false,
        versioned: true,
        autoDeleteObjects: stack.stage !== 'prod',
        removalPolicy:
          stack.stage === 'prod' ? RemovalPolicy.RETAIN : RemovalPolicy.DESTROY,
      },
    },
  });
  const PATRONUS_API_KEY = new Config.Secret(stack, 'PATRONUS_API_KEY');
  const api = new Api(stack, 'api', {
    defaults: {
      function: {
        bind: [table, s3Bucket, PATRONUS_API_KEY],
        timeout: 29,
        environment: {
          BUCKET_NAME: s3Bucket.bucketName,
          TABLE_NAME: table.tableName,
          PATRONUS_BASE_API_URL:
            'https://backend.patronus.alpha.angellistweb.services',
        },
        functionName: `${stack.stage}-llm-evaluation-handler`,
      },
    },
    routes: {
      'POST /evaluate': 'packages/functions/src/api/evaluate.handler',
    },
  });
  // Output API details to the console
  stack.addOutputs({
    APIEndpoint: api.url,
  });
  return { url: api.url };
}
import { RemovalPolicy } from 'aws-cdk-lib';
import { BlockPublicAccess, BucketEncryption } from 'aws-cdk-lib/aws-s3';
import { Api, Bucket, Config, StackContext, Table } from 'sst/constructs';
export function APIStack({ stack }: StackContext) {
  const table = new Table(stack, 'LLMEvaluationTable', {
    fields: {
      jobId: 'string',
      service: 'string',
    },
    primaryIndex: { partitionKey: 'jobId', sortKey: 'service' },
    cdk: {
      table: {
        removalPolicy:
          stack.stage === 'prod' ? RemovalPolicy.RETAIN : RemovalPolicy.DESTROY,
        tableName: `${stack.stage}-llm-evaluation-table`,
      },
    },
  });
  const s3Bucket = new Bucket(stack, 'LLMEvaluationBucket', {
    cdk: {
      bucket: {
        bucketName: `${stack.stage}-llm-evaluation-bucket`,
        encryption: BucketEncryption.S3_MANAGED,
        blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
        publicReadAccess: false, // Ensure public read access is disabled
        versioned: true, // Ensure versioning is enabled
        autoDeleteObjects: stack.stage !== 'prod',
        removalPolicy:
          stack.stage === 'prod' ? RemovalPolicy.RETAIN : RemovalPolicy.DESTROY,
      },
    },
  });
  const PATRONUS_API_KEY = new Config.Secret(stack, 'PATRONUS_API_KEY');
  const api = new Api(stack, 'api', {
    defaults: {
      function: {
        bind: [table, s3Bucket, PATRONUS_API_KEY],
        timeout: 29,
        environment: {
          BUCKET_NAME: s3Bucket.bucketName,
          TABLE_NAME: table.tableName,
          PATRONUS_BASE_API_URL:
            'https://backend.patronus.alpha.angellistweb.services',
        },
        functionName: `${stack.stage}-llm-evaluation-handler`,
      },
    },
    routes: {
      'POST /evaluate': 'packages/functions/src/api/evaluate.handler',
    },
  });
  // Output API details to the console
  stack.addOutputs({
    APIEndpoint: api.url,
  });
  return { url: api.url };
}
