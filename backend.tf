terraform {
    ## Remote Backend - S3 with state Locking through DynamoDB
    # backend "s3" {
    #     encrypt = true
    #     bucket = "<Bucket Name>"
    #     dynamodb_table = "<DynamoDB table name>"
    #     key    = "<terraform State File Name with Path>" #e.g. /path/to/my/key/terraforn.tfstate
    #     region = "<Bucket Region>" # e.g. ap-south-1
    # }
    
    ## Remote Backend - Storage Account
    # backend "azurerm" {
    #     resource_group_name   = "<stg-rg>"
    #     storage_account_name  = "<stg-name>"
    #     container_name        = "<stg-container-name>"
    #     key                   = "<terraform State File Name>" #e.g. terraforn.tfstate
    # }
    
    backend "local" {
        path = "terraform.tfstate"
    }
}
