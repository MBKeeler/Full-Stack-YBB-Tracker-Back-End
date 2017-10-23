
curl --include --request POST "http://localhost:4741/players" \
  --header "Authorization: Token token=${TOKEN}" \
 --header "Content-Type: application/json" \
 --data '{
   "player": {
     "first_name": "'"${FIRST_NAME}"'",
     "last_name": "'"${LAST_NAME}"'",
     "age": "'"${AGE}"'",
     "grade": "'"${GRADE}"'",
     "program": "'"${PROGRAM}"'",
     "notes": "'"${NOTES}"'",
     "catch": "'"${CATCH}"'",
     "throw": "'"${THROW}"'",
     "pitch": "'"${PITCH}"'",
     "bat": "'"${BAT}"'",
     "athleticism": "'"${ATHLETICISM}"'"
   }
 }'

# working script
# TOKEN=BAhJIiUwZjBjMmQ1OTJiMDU1ZjlhYjMwM2RhODQ1MDc0NmJhYgY6BkVG--a58b2ad24a5e1bcb9929aa2e6931b2c3f15b2156 FIRST_NAME=Jack LAST_NAME=Lewis AGE=8 GRADE=2 PROGRAM=A NOTES="needs batting practice" CATCH=3 THROW=4 PITCH=3 BAT=2 ATHLETICISM=3 sh public/scripts/players/create.sh
