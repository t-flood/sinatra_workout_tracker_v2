class UsersController < ApplicationController
  get '/signup' do
    erb :"users/new"
  end

  post '/users' do
    if User.find_by(:email => params[:email]).nil? == false
      redirect '/signup?error=username taken'
    else
      @user = User.new
      @user.email = params[:email]
      @user.password = params[:password]
      if @user.save
        redirect '/login'
      else
        erb :"users/new"
      end
    end
  end
end
