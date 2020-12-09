class ExercisesController < ApplicationController

  get '/exercises' do
    redirect_if_not_logged_in
    @exercises = current_user.exercises
    erb :'exercises/index'
  end

  get '/exercises/new' do
    redirect_if_not_logged_in
    erb :'exercises/new'
  end

  post '/exercises' do
    redirect_if_not_logged_in
    @exercise = Exercise.new(params[:exercise])
    if @exercise.valid? == true
        @exercise.user = current_user
        @exercise.save
      redirect "/exercises/#{@exercise.date}"
    else
      redirect "/exercises/new?error=invalid"
    end
  end

  get '/exercises/:date' do
    redirect_if_not_logged_in
    @workout = current_user.exercises.where(date: params[:date])
    erb :'exercises/show'
  end

  get '/exercises/:id/edit' do
    redirect_if_not_logged_in
    @exercise = current_user.exercises.find_by_id(params[:id])
      erb :'exercises/edit'
  end

  patch '/exercises/:id' do
    redirect_if_not_logged_in
    exercise = current_user.exercises.find_by_id(params[:id])
    if exercise.valid? == true
      exercise.update(params[:exercise])
      redirect "/exercises/#{exercise.date}"
    else
      redirect "/exercises?error=invalid"
    end
  end
end
