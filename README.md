# AWS Secrets Manager
This can export every secrets from AWS Secrets Manager to environment variables to github actions

# Parameters:
 - secrets: JSON ARRAY from secrets names from AWS Secret Manager. Ex: `'["LEIA_LOFT_PROD","LEIA_FLIX_PROD"]'`
# How to use

```yaml
  - uses: LeiaInc/devops-secrets-actions@v1
    with:
      secrets: '["LEIALOFT_PROD","LEIAFLIX_PROD"]'
```

Obs: It's necessary to pass the AWS Access key and AWS Secret Key to environment.

```yaml
  - name: Configure AWS Credentials
    uses: aws-actions/configure-aws-credentials@v1
    with:
      aws-access-key-id: ${{ secrets.LEIALOFT_POC_AWS_ACCESS_KEY_ID }}
      aws-secret-access-key: ${{ secrets.LEIALOFT_POC_AWS_SECRET_ACCESS_KEY_ID }}
      aws-region: us-east-1
  - uses: LeiaInc/devops-secrets-actions@v1
    with:
      secrets: '["LEIALOFT_PROD","LEIAFLIX_PROD"]'
  - name: Get the value from ENV
    run: |
      echo "LEIALOFT_PROD_SECRET_SECURY_TEST: $LEIALOFT_PROD_SECRET_SECURY_TEST"
      echo "LEIALOFT_PROD_TOKEN_TEST: $LEIALOFT_PROD_TOKEN_TEST"
      echo "LEIAFLIX_PROD_GCP_KEY: $LEIAFLIX_PROD_GCP_KEY"
```

