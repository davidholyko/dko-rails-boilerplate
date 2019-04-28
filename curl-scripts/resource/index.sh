#!/bin/bash

curl "http://localhost:4741/{YOUR RESOURCE}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
