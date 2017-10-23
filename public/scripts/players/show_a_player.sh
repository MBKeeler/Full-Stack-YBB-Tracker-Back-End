curl --include --request GET "http://localhost:4741/players" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "player": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'"
    }
  }'

  # working script
  #TOKEN=BAhJIiUwZjBjMmQ1OTJiMDU1ZjlhYjMwM2RhODQ1MDc0NmJhYgY6BkVG--a58b2ad24a5e1bcb9929aa2e6931b2c3f15b2156 FIRST_NAME=Jack LAST_NAME=Lewis sh public/scripts/players/show_a_player.sh
