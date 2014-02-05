class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
def authorize
    unless defined? current_user
      redirect_to root_url, notice: "Вы должны быть администратором"  # halts request cycle
    end
  end
end
