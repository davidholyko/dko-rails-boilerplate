#!/bin/bash

curl "http://localhost:4741/{examples}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "field0": "value1",
      "field1": "value1"
    }
  }'

echo
