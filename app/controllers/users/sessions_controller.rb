class Users::SessionsController < Devise::SessionsController
  #def new
    #super
    #if current_user.has_role? 'admin'
      #redirect_to rails_admin_path, notice: 'Welcome Admin'
    #else
      #redirect_to root_path, notice: 'Login Successful'
    #end
  #end
end