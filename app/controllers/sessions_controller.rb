class SessionsController < ApplicationController
  def new
    @title = "Login"
  end
  
  def create
    user = User.authenticate(params[:session][:name],
                             params[:session][:password])
    if user.nil?
     # flash.now[:error] = "Invalid name/password combination."
      @title = "Login"
      render 'new'
    else
      session[:remember_token] = user.name
      login user
      if user.position == "owner"  
        redirect_to own_home_path
      else
        redirect_to emp_home_path
      end
    end
  end
  
  def destroy
    reset_session
    redirect_to signin_path
  end

end
