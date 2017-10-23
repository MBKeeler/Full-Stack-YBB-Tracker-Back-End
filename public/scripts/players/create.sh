API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/players"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  # --header "Authorization: Token token=$TOKEN" \
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

echo


# 
#
# curl --include --request POST "http://localhost:4741/players" \
#   --header "Content-Type: application/json" \
#   --data '{
#     "player": {
#       "first_name": "'"${FIRST_NAME}"'",
#       "last_name": "'"${LAST_NAME}"'",
#       "age": "'"${AGE}"'",
#       "grade": "'"${GRADE}"'",
#       "program": "'"${PROGRAM}"'",
#       "notes": "'"${NOTES}"'"
#       "catch": "'"${CATCH}"'",
#       "throw": "'"${THROW}"'",
#       "pitch": "'"${PITCH}"'",
#       "bat": "'"${BAT}"'",
#       "athleticism": "'"${ATHLETICISM}"'"
#     }
#   }'
  #
  # curl --include --request POST "http://localhost:4741/players" \
  #   --header "Content-Type: application/json" \
  #   --header "Authorization: Token token=$TOKEN" \
  #   --data '{
  #     "player": {
  #       "first_name": "'"${FIRST_NAME}"'",
  #       "last_name": "'"${LAST_NAME}"'",
  #       "age": "'"${AGE}"'",
  #       "grade": "'"${GRADE}"'",
  #       "program": "'"${PROGRAM}"'",
  #       "notes": "'"${NOTES}"'"
  #       "catch": "'"${CATCH}"'",
  #       "throw": "'"${THROW}"'",
  #       "pitch": "'"${PITCH}"'",
  #       "bat": "'"${BAT}"'",
  #       "athleticism": "'"${ATHLETICISM}"'"
  #     }
  #   }'

# FIRST_NAME=‘Jack’ LAST_NAME=‘Lewis’ AGE=8 GRADE=2 PROGRAM=‘A - Typically 1st Grade’ NOTES=‘ needs batting practice’ CATCH=3 THROW=4 PITCH=3 BAT=2 ATHLETICISM=3 sh scripts/players/create.sh
