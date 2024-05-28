ruleid: ensure_bucket_security
const textractDocumentBucket = new Bucket(stack, 'TextractDocumentBucket', {
  bucketName: `${stack.stage}-textract-document-bucket`,
  encryption: BucketEncryption.S3_MANAGED,
  blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
  publicReadAccess: false,
  versioned: false, // Enable versioning as per your comment, if needed, set to true
  removalPolicy: stack.stage === 'prod' ? RemovalPolicy.RETAIN : RemovalPolicy.DESTROY,
});
