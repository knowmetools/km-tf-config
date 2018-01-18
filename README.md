# Know Me Terraform Config

This repository contains the files required to set up our Terraform infrastructure.


## Usage

This block should be included in any other Terraform code that we run:

```hcl
terraform {
  backend "s3" {
    bucket = "km-tf-state"
    key    = "<project-name>"
    region = "us-east-1"
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

This module contains the code to provision the infrastructure used for other Terraform code. Because of this, we have to store its state in this repository. This means that no sensitive information should be used in this repository.

Making a change should create a new `.tfstate` file that should be commited along with code changes.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.


## Authors

Chathan Driehuys (chathan@knowmetools.com)
