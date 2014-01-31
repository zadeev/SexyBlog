module ApplicationHelper
	def current_user
		User.find(session[:user_id])
	end
	
	def empty_entry
		Entry.new
	end

end
