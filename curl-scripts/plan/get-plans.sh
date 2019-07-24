#!/bin/bash

curl "http://localhost:4741/plans" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
