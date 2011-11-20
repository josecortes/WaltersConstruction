class PagesController < ApplicationController
  def login
   @title = "Walters Construction Login"
   
  end

  def emp_home
    @title = "Employee Home"
  end

  def emp_hours
    @title = "Employee Hours Entry"
  end

end
