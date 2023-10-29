# terraform-gcp-training

### Setup your local environment

1. Clone the repo
   ```sh
   git clone https://github.com/belgacem-io/terraform-gcp-training.git
   ```

2. Create '.env/training.env' file and add required variables
   ```sh
   # '.env/cfcal.env'
   ##################################### GCP Credentials ###################
   export PROJECT_ID=xx-myproject-prd-xxx
   export PROJECT_NAME=xx-myproject-prd
   export IAC_SERVICE_ACCOUNT=xx-iac-lz@xx-myproject-prd-xxx.iam.gserviceaccount.com

   ```

3. Authenticate to google cloud
   ```sh
    gcloud auth application-default login --no-launch-browser
    gcloud config set project $PROJECT_ID
   ```
  