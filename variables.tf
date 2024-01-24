variable "key_id" {
  default = "arn:aws:kms:us-east-1:739561048503:key/20f88998-08b8-4757-b797-48516b57b1ef"
}

variable "parameters" {
  default = {
    "dev.expense.rds.username" = "admin1"
  }
}

## NOte: In organization we dont keep passwords in Git repo at any cost, Here in Lab, Just for learnability purpose we are declaring them here and hardcoding in git repos.
variable "secrets" {
  default = {
    "dev.expense.rds.password" = "ExpenseApp123"
  }
}


