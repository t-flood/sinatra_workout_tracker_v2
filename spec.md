# Specifications for the Sinatra Assessment

Specs:

- [x] Use Sinatra to build the app

- [x] Use ActiveRecord for storing information in a database

- [x] Include more than one model class (e.g. User, Post, Category)

  - Models are User and Exercise

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)

  - User has_many Exercises

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)

  - Exerercises belongs_to Users

- [x] Include user accounts with unique login attribute (username or email)
      User accounts have

  - Users accounts have email and password login attributes

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      The exercises_controller has routes for creating, reading, updating, and destroying. They are as follows:

| Verb | Route | View |
| GET | /exercises | index | #get all exercises
| GET | /exercises/:date| show | # Get all the exercises for a date
| GET | /exercises/new | new | #Get the form to make an exercise
| POST | /exercises | #Create an exercise
| GET | /exercises/:id/edit | edit | #Get form to edit a day of exercise
| PUT/PATCH | exercises/:id | #update a day of exercise
| DELETE | /exercises/:id | #delete a day of exercise

- [x] Ensure that users can't modify content created by other users

  - I use the .current_user method to ensure that a user can't access another users exercise data.

- [x] Include user input validations

  - I set what attributes a User and an Exercise needs to be valid in the class and check that those requirements are met using the .valid? method.

- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
