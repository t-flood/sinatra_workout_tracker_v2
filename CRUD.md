# CRUD

# Create

POST /exercises & GET /exercises/new

GET /exercises/new
erb :'exercises/new

POST /exercises
exercise = Exercise.create(params)

# Read

GET /exercises & GET /movies/:id

GET /exercises
@exercises = Exercises.all
erb :'/exercises/index'

GET /exercises/:date

# Update

# Delete

| Verb | Route | View |
| GET | /exercises | index | #get all exercises
| GET | /exercises/:date| show | # Get all the exercises for a date
| GET | /exercises/new | new | #Get the form to make an exercise
| POST | /exercises | #Create an exercise
| GET | /exercises/:date/edit | edit | #Get form to edit a day of exercise
| PUT/PATCH | exercises/:date | #update a day of exercise
| DELETE | /exercises/:date | #delete a day of exercise
