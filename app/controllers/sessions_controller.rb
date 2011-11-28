class SessionsController < ApplicationController
  def new
    @title = "Login"
  end
  
  def create
    render 'new'
  end
  
  def destroy
  end

end
