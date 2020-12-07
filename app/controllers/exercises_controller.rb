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
    redirect "/exercises/#{@exercise.date}"
  end

  get '/exercises/:date' do
    redirect_if_not_logged_in
    @workout = Exercise.where("date = ?", params[:date])
    erb :'exercises/show'
  end

  get '/exercises/:id/edit' do
    redirect_if_not_logged_in
    @exercise = Exercise.find_by_id(params[:id])
    erb :'exercises/edit'
  end

  patch '/exercises/:id' do
    exercise = Exercise.find_by(params[:id])
    exercise.update(params[:exercise])
    redirect "/exercises/#{exercise.date}"
  end

end
