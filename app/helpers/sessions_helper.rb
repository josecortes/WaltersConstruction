module SessionsHelper
 def login(user)
   cookies[:remember_token] = [user.name]
   #self.current_user = user
 end
end
