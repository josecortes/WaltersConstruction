class SessionsController < ApplicationController
  def new
    @title = "Login"
  end
  
  def create
    user = User.authenticate(params[:session][:name],
                             params[:session][:password]
                             params[:session][:position])
    if user.nil?
      flash.now[:error] = "Invalid name/password combination."
      @title = "Login"
    else
      #sign in the user and ridirect
    end
  end
  
  def destroy
  end

end
