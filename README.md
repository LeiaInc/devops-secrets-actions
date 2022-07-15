# devops-actions
This repo is destined to DevOps Teams Github custom Actions

# Parameters:
 - secrets: JSON ARRAY from secrets names from AWS Secret Manager. Ex: `'["LEIA_LOFT_PROD","LEIA_FLIX_PROD"]'`
# How to use

```yaml
  - uses: LeiaInc/devops-actions@v0.0.1
    with:
      secrets: '["LEIA_LOFT_PROD","LEIA_FLIX_PROD"]'
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
      secrets: '["LEIA_LOFT_PROD","LEIA_FLIX_PROD"]'
  - name: Get the value from ENV
    run: |
      echo "LEIA_LOFT_PROD_SECRET_SECURY_TEST: $LEIA_LOFT_PROD_SECRET_SECURY_TEST"
      echo "LEIA_LOFT_PROD_TOKEN_TEST: $LEIA_LOFT_PROD_TOKEN_TEST"
      echo "LEIA_FLIX_PROD_GCP_KEY: $LEIA_FLIX_PROD_GCP_KEY"
```

