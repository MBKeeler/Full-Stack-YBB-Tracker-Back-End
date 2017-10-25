## README for front-end: Youth Baseball Evaluation Tracker:

As a member and volunteer of my youth Baseball league we need a better way of
tracking the performance of our players at our evaluation.  Right now we use
paper and must then reconcile all of the individual sheets to get a view of
player performance before we can decide which levels of play are appropriate.
The goal of this project will be to provide an option for entering data and then
review the players and their scores.

## On Github
Front End Code Repo: https://github.com/MBKeeler/Full-Stack-YBB-Tracker
Frond End Code Repo: https://mbkeeler.github.io/Full-Stack-YBB-Tracker/
Back End Code: https://github.com/MBKeeler/Full-Stack-YBB-Tracker-Back-End

## Wire Frames & ERDs
https://imgur.com/a/BFDYN

## Back-end Techologies
  Ruby
  Rails
  Heroku (hosting the backend services)
  PostgreSQL 

## Resources
For v1 of this application there are two resources used;  Users & Players.

Users represent board members who will login to the application to enter data
associated with a player.  Player data is kept in a player table and contains
the following fields:

  Type      Field Name
+---------+---------------------
string       "first_name"
string      "last_name"
integer      "age"
string       "grade"
string       "program"
string      "notes"
integer      "catch"
integer      "throw"
integer      "pitch"
integer      "bat"
integer      "athleticism"
datetime
datetime
bigint       "user_id"
index       ["user_id"], name: "index_players_on_user_id"

# Resource APIs
User Resource Actions:
-HTTP Verb-+ ---- URL -----+---- Description ------------------+
    POST         /sign-up      creates a user
    POST         /sign-in      retrieves a list of all players
    DELETE       /players:id   logs the user out
    PATCH        /players:id   changes the user's password

User Resource Notes:
This full stack project uses the same General Assembly authentication api as was
used for the Tic Tac Toe Project. Sample parameters are provided in JSON format
below.

sign-in:
```
  "credentials": {
    "email": "'"${EMAIL}"'",
    "password": "'"${PASSWORD}"'",
    "password_confirmation": "'"${PASSWORD}"'"
  }
```
sign-up:
```
"credentials": {
  "email": "'"${EMAIL}"'",
  "password": "'"${PASSWORD}"'",
  "password_confirmation": "'"${PASSWORD}"'"
}
```
change-password
```
"passwords": {
  "old": "'"${OLDPW}"'",
  "new": "'"${NEWPW}"'"
}
```
sign-out or logout requires only the user ID and the authentication token


Complete details of the api may be found here: https://git.generalassemb.ly/ga-wdi-boston/game-project-api

Player Resource Actions:

 -- Action -+-HTTP Verb-+ ---- URL -----+---- Description ----
 create        POST         /players      creates a player
 index         GET          /players      retrieves a list of all players
 destroy       DELETE       /players:id   deletes the player with ID#
 update        PATCH        /players:id   updates the player with ID#

Player Resource Notes:
Player resource requires user authentication for all actions. Sample parameters
are provided in JSON format below for creating and modifying a player.

create
```
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
```
update (or modify)
```
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
```

## Example Curls Scripts
Curl scripts are contained within each file listed below.  These may be
referenced in conjunction with the Player resource API information above to
show how the api maybe used.

User resource scripts:
./public/scripts/auth/
  change-password.sh
  sign-in.sh
  sign-up.sh
  sign-out.sh

Player resource scripts:
./public/scripts/players/

  create.sh
  destroy.sh
  modify.sh
  showAll.sh
