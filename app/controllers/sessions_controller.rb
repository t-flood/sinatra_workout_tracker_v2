class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login"
  end

  post '/sessions' do
    #login a user with this email
    login(params[:email], params[:password])
    redirect '/exercises'
  end

  get '/logout' do
    logout
    redirect '/login'
  end
end
