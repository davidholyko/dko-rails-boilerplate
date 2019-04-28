#!/bin/bash

curl "http://localhost:4741/{YOUR RESOURCE}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"
echo
