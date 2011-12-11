module SessionsHelper
 def login(user)
   cookies[:remember_token] = [user.name]
   cookies[:user_id] = [user.id]
   #self.current_user = user
 end
 
 def logout(user)
   session.destroy
 end
end
