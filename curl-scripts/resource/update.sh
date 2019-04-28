#!/bin/bash

curl "http://localhost:4741/{YOUR RESOURCE}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "YOUR RESOURCE": {
      "field0": "value1",
      "field1": "value1"
    }
  }'

echo
