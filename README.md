# Know Me Terraform Config

This repository contains the files required to set up our Terraform infrastructure.


## Usage

This block should be included in any other Terraform code that we run:

```hcl
terraform {
  backend "s3" {
    bucket         = "km-tf-state"
    dynamodb_table = "terraformLock"
    key            = "<project-name>"
    region         = "us-east-1"
  }
}
```

*Note that `<project-name>` should be unique across all projects that use this bucket.*


## Overview

The main objective of this module is to create an S3 bucket where we can store Terraform state for other projects.


## Provisioning the Infrastructure

```shell
terraform apply
```


## Development

**If you make changes, make sure the [Usage](#usage) block is still up to date.**

This module contains the code to provision the infrastructure used for other Terraform code. Because of this, we have to store its state in this repository. This means that no sensitive information should be used in this repository.

Making a change should create a new `.tfstate` file that should be commited along with code changes.

### Design Rationale

While the Terraform code in this repository is fairly simple, there are a few notable items:

1. We enabled versioning of the S3 bucket so that errors that corrupt a `.tfstate` file are fairly easy to recover from.
2. We create a DynamoDB table that allows Terraform to use a locking mechanism when applying changes. This is important if there is the possiblity of multiple users running `terraform apply` at the same time.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.


## Authors

Chathan Driehuys (chathan@knowmetools.com)
