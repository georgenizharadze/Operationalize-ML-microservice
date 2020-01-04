#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker image build --tag 195011/price-predictor:1.0 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker container run --rm -p 8000:80 --name price_predictor 195011/price-predictor:1.0