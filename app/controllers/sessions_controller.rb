class SessionsController < ApplicationController

def new
end

def create
  session[:name] = params[:name]
  if session[:name] == nil || session[:name].empty?
    redirect_to login_path
  else 
    redirect_to '/'
  end
end

def destroy
  if !session[:name].empty?
    session.delete :username
    redirect_to login_path
  elsif 
    redirect_to login_path
  end
end

end