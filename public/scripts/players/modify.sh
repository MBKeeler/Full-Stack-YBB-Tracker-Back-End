curl --include --request PATCH "http://localhost:4741/players" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "player": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "age": "'"${AGE}"'",
      "grade": "'"${GRADE}"'",
      "program": "'"${PROGRAM}"'",
      "notes": "'"${NOTES}"'"
      "catch": "'"${CATCH}"'",
      "throw": "'"${THROW}"'",
      "pitch": "'"${PITCH}"'",
      "bat": "'"${BAT}"'",
      "athleticism": "'"${ATHLETICISM}"'"
    }
  }'
