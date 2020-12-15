# CRUD

# Create

POST /exercises & GET /exercises/new

GET /exercises/new
erb :'exercises/new

POST /exercises
exercise = Exercise.create(params)
redirect to

# Read

GET /exercises & GET /movies/:date

GET /exercises
@exercises = Exercises.all
erb :'/exercises/index'

GET /exercises/:date
@exercise = Exercise.find(params[:date])
erb:'/exercises/show'

# Update

GET /exercises/:date/edit & PUT/PATCH /exercises/:date/edit

GET /exercises/:date/edit
@movies = Movie.find(params[:date])
erb :'/exercises/edit'

PUT/PATCH /exercises/:id
exercise = Exercise.find(params[:id])

exercise.update(params)

redirect to

# Delete

DELETE /exercises/:id
exercise = Exercise.find(params:date)
Exercise.destroy(exercise)
redirect to

| Verb | Route | View |
| GET | /exercises | index | #get all exercises
| GET | /exercises/:date| show | # Get all the exercises for a date
| GET | /exercises/new | new | #Get the form to make an exercise
| POST | /exercises | #Create an exercise
| GET | /exercises/:id/edit | edit | #Get form to edit a day of exercise
| PUT/PATCH | exercises/:id | #update a day of exercise
| DELETE | /exercises/:id | #delete a day of exercise
