# terraform/prod.tfvars
project_name   = "twin"
environment    = "prod"

# If you’re not using a custom domain yet:
use_custom_domain = false
root_domain       = ""

# Reasonable defaults (match your variables.tf if present)
lambda_timeout              = 30
api_throttle_burst_limit    = 1000
api_throttle_rate_limit     = 500

# Set your Bedrock model if you use it (or comment out if not required)
# bedrock_model_id = "YOUR_BEDROCK_MODEL_ID"