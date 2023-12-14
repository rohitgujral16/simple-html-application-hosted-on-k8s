import boto3

def lambda_handler(event, context):
    # Specify the S3 bucket and file path
    s3_bucket = 'rohit-prod-terraform-static-bucket'
    file_path = 'dynamic_string.txt'

    # Create an S3 client
    s3_client = boto3.client('s3')

    try:
        # Read the content of the file from S3
        response = s3_client.get_object(Bucket=s3_bucket, Key=file_path)
        file_content = response['Body'].read().decode('utf-8')

        return file_content

    except Exception as e:
        return {
            "statusCode": 500,
            "body": f"Error reading file: {str(e)}",
            "headers": {
                "Content-Type": "text/plain",
            },
        }
