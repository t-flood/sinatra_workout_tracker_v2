class ExercisesController < ApplicationController
  get '/exercises' do
    "You are logged in as #{session[:email]}"
  end

  get '/exercises/new' do
    redirect_if_not_logged_in
    erb :'exercises/new'
  end

  get '/posts/:date/edit' do
    redirect_if_not_logged_in
    erb :'exercises/edit'
  end
end
