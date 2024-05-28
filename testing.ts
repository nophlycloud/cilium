ruleid: ensure_bucket_security
const s3Bucket = new Bucket(stack, 'LLMEvaluationBucket', {
  bucketName: `${stack.stage}-llm-evaluation-bucket`,
  encryption: BucketEncryption.S3_MANAGED,
  blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
  publicReadAccess: false,
  versioned: false,
  autoDeleteObjects: stack.stage !== 'prod',
  removalPolicy: stack.stage === 'prod' ? RemovalPolicy.RETAIN : RemovalPolicy.DESTROY,
});
