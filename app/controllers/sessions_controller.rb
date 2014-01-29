class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(name: params[:name])
		if user and user.authenticate(params[:password])
    		session[:user_id] = user.id
    		#redirect_to users_path
		else
			#redirect_to users_path, alert: "Invalid user/password combination" 
		end
  end

  def destroy
  end
end
