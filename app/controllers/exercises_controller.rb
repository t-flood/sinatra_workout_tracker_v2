class ExercisesController < ApplicationController

  get '/exercises' do
    @exercises = Exercise.all
    erb :'exercises/index'
  end

  get '/exercises/new' do
    redirect_if_not_logged_in
    erb :'exercises/new'
  end

  post '/exercises' do
    redirect_if_not_logged_in
    @exercise = Exercise.create(params[:exercise])
    redirect "/exercises"
  end

  get '/exercises/:date' do
    redirect_if_not_logged_in
    #show
    #show exercises for a date
  end

  get '/exercises/:date/edit' do
    redirect_if_not_logged_in
    #get edit form for a date
    erb :'exercises/edit'
  end


end
