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
    "dev.roboshop.docdb.endpoint"         = "dev-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com"
    "dev.roboshop.catalogue.MONGO_URL"    = "mongodb://admin1:RoboShop12345@dev-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "dev.roboshop.user.MONGO_URL"         = "mongodb://admin1:RoboShop12345@dev-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "dev.roboshop.user.REDIS_HOST"        = "dev-roboshop-elasticache.nud0cy.0001.use1.cache.amazonaws.com"
    "dev.roboshop.cart.REDIS_HOST"        = "dev-roboshop-elasticache.nud0cy.0001.use1.cache.amazonaws.com"
    "dev.roboshop.cart.CATALOGUE_HOST"    = "catalogue"
    "dev.roboshop.cart.CATALOGUE_PORT"    = "80"
    "dev.roboshop.shipping.CART_ENDPOINT" = "cart"
    "dev.roboshop.shipping.DB_HOST"       = "dev-mysql-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    "dev.roboshop.rds.endpoint"           = "dev-mysql-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"

    "dev.roboshop.payment.CART_HOST" = "cart"
    "dev.roboshop.payment.CART_PORT" = "80"
    "dev.roboshop.payment.USER_HOST" = "user"
    "dev.roboshop.payment.USER_PORT" = "80"
    "dev.roboshop.payment.AMQP_HOST" = "rabbitmq-dev.rdevopsb73.online"
    "dev.roboshop.payment.AMQP_USER" = "roboshop"
    "dev.roboshop.payment.AMQP_PASS" = "roboshop123"


    "prod.roboshop.docdb.endpoint"         = "prod-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com"
    "prod.roboshop.catalogue.MONGO_URL"    = "mongodb://admin1:RoboShop12345@prod-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "prod.roboshop.user.MONGO_URL"         = "mongodb://admin1:RoboShop12345@prod-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "prod.roboshop.user.REDIS_HOST"        = "prod-roboshop-elasticache.nud0cy.0001.use1.cache.amazonaws.com"
    "prod.roboshop.cart.REDIS_HOST"        = "prod-roboshop-elasticache.nud0cy.0001.use1.cache.amazonaws.com"
    "prod.roboshop.cart.CATALOGUE_HOST"    = "catalogue"
    "prod.roboshop.cart.CATALOGUE_PORT"    = "80"
    "prod.roboshop.shipping.CART_ENDPOINT" = "cart"
    "prod.roboshop.shipping.DB_HOST"       = "prod-mysql-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    "prod.roboshop.rds.endpoint"           = "prod-mysql-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"

    "prod.roboshop.payment.CART_HOST" = "cart"
    "prod.roboshop.payment.CART_PORT" = "80"
    "prod.roboshop.payment.USER_HOST" = "user"
    "prod.roboshop.payment.USER_PORT" = "80"
    "prod.roboshop.payment.AMQP_HOST" = "rabbitmq-prod.rdevopsb73.online"
    "prod.roboshop.payment.AMQP_USER" = "roboshop"
    "prod.roboshop.payment.AMQP_PASS" = "roboshop123"
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

    "prod.roboshop.rds.username"      = "admin1"
    "prod.roboshop.rds.password"      = "RoboShop12345"
    "prod.roboshop.docdb.username"    = "admin1"
    "prod.roboshop.docdb.password"    = "RoboShop12345"
    "prod.roboshop.rabbitmq.username" = "roboshop"
    "prod.roboshop.rabbitmq.password" = "roboshop123"

  }
}



