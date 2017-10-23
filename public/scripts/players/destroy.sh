

curl --include --request DELETE "http://localhost:4741/players/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

  # working script
  #TOKEN=BAhJIiUwZjBjMmQ1OTJiMDU1ZjlhYjMwM2RhODQ1MDc0NmJhYgY6BkVG--a58b2ad24a5e1bcb9929aa2e6931b2c3f15b2156 ID=2 sh public/scripts/players/destroy.sh
