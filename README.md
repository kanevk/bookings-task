# bookings-task
A task for BookingsPlus

## Task description

Create a rails app with a an API endpoint to return a collection of bookings
Use react to consume the API and display the list of bookings
Allow a user to filter bookings by space
Bookings should have a start/end date, description and space_id

## Task notes
Feel free to implement the API with whichever library you prefer
 Feel free to use react-rails if this makes getting up and running easier
 Try and stick to an hour for this task
Follow you're usual development practices

**The candidates should provide a link to a repo on Github containing the code sample.**

## Run the API

```
cd api && bundle
bundle exec rails db:setup && bundle exec rails db:seed
PORT=3001 bundle exec rails s
```

## Run the client

```
cd client
yarn install
yarn start
```
