# Know Me Terraform Config

**S3 Bucket for Terraform State:** `km-tf-state` in `us-east-1`

This repository contains the files required to set up our Terraform infrastructure.


## Overview

The main objective of this module is to create an S3 bucket where we can store Terraform state for other projects.


## Running the Code

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
