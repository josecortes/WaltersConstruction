class PagesController < ApplicationController
  def login
   @title = "Login"
   
  end

  def emp_home
    @title = "Home"
  end

  def emp_hours
    @title = "Entry"
  end

end
