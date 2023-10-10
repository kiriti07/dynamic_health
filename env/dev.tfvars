# Global Variables
instance_type = "t2.micro"               # EC2 instance size/type.
ami           = "ami-067d1e60475437da2"  # Amazon Machine Image ID, defines the OS and software for the instance.
vpc_id        = "vpc-0e5eeec06a1ce77de"  # ID of the Virtual Private Cloud where resources will be deployed.
subnet_id     = "subnet-01b420acdf5f7593d"
subnet_id1    = "subnet-0c812d0011ca6875a"
# public_subnet1 = ""
# public_subnet2 = ""
# public_subnet3 = ""
# private_subnet1 = ""
# private_subnet2 = ""
# private_subnet3 = ""
# private_subnet4 = ""
# private_subnet5 = ""

# RDS Configuration
secret_id             = "arn:aws:secretsmanager:us-east-1:616126220328:secret:mysql-rds-4s3bLs" # ARN of the AWS Secrets Manager secret for RDS credentials.
allocated_storage     = 10                  # Amount of storage (in GB) allocated for the RDS instance.
engine                = "mysql"             # Database engine type for the RDS instance.
engine_version        = "5.7"               # Version of the database engine.
instance_class        = "db.t2.micro"       # RDS instance size/type.
db_name               = "mydb"              # Name of the database to be created in the RDS instance.
parameter_group_name  = "default.mysql5.7"  # Parameter group to associate with the RDS instance. Defines engine configuration values.
skip_final_snapshot   = true                # Whether to skip creating a final snapshot when the RDS instance is deleted.