variable "key_id" {
  default = "arn:aws:kms:us-east-1:739561048503:key/20f88998-08b8-4757-b797-48516b57b1ef"
}

variable "parameters" {
  default = {
    "dev.expense.rds.username"              = "admin1"
    "dev.expense.rds.endpoint"              = "dev-expense-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    "dev.expense.frontend.backend_endpoint" = "https://backend-dev.rdevopsb73.online/"
    "newrelic.account"                      = "4346146"
    "dev.expense.frontend.app_version"      = "1.0.1"
    "dev.expense.backend.app_version"       = "1.0.1"

    "prod.expense.rds.username"              = "admin1"
    "prod.expense.rds.endpoint"              = "prod-expense-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    "prod.expense.frontend.backend_endpoint" = "https://backend-prod.rdevopsb73.online/"
    "prod.expense.frontend.app_version"      = "1.0.1"
    "prod.expense.backend.app_version"       = "1.0.1"

    # RoboShop Project
    "dev.roboshop.docdb.endpoint"            = "dev-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com"

  }
}

## NOte: In organization we dont keep passwords in Git repo at any cost, Here in Lab, Just for learnability purpose we are declaring them here and hardcoding in git repos.
variable "secrets" {
  default = {
    "dev.expense.rds.password"          = "ExpenseApp123"
    "ssh.password"                      = "DevOps321"
    "ssh.username"                      = "centos"
    "ses.username"                      = "AKIA2YMKGBG3ZI4Z4AMP"
    "ses.password"                      = "BD5KcDWjzuCO+R/azBzJhsot8raURKe94AUT6/kU3LAA"
    "grafana.apikey"                    = "glsa_JxoVV6XBnJ413UOJmpq7ywBJ5CNMcrRU_406ebd6e"
    "dev.expense.frontend.newrelic.key" = "NRAK-7Z84T2QE62VG05D1EDXD4KZ0140"
    "dev.expense.backend.newrelic.key"  = "46f91710a2e46a2bd588b90e467e0a28FFFFNRAL"
    "elasticsearch.password"            = "qa7Gyu3u-qh+aeRcCX9i"
    "artifactory.user"                  = "admin"
    "artifactory.password"              = "Admin123"


    "prod.expense.rds.password"          = "ExpenseApp123"
    "prod.expense.frontend.newrelic.key" = "NRAK-7Z84T2QE62VG05D1EDXD4KZ0140"
    "prod.expense.backend.newrelic.key"  = "46f91710a2e46a2bd588b90e467e0a28FFFFNRAL"


    ## RoboShop Project
    "dev.roboshop.rds.username"      = "admin1"
    "dev.roboshop.rds.password"      = "RoboShop12345"
    "dev.roboshop.docdb.username"    = "admin1"
    "dev.roboshop.docdb.password"    = "RoboShop12345"
    "dev.roboshop.rabbitmq.username" = "roboshop"
    "dev.roboshop.rabbitmq.password" = "roboshop123"


  }
}



