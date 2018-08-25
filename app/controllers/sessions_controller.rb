class SessionsController < ApplicationController

def new
end

def create
  session[:name] = params[:name]
  if session[:name] == nil
    redirect_to '/'
  else 
  end
end

def destroy
  session.delete :username
end

end