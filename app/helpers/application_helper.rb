module ApplicationHelper
	def current_user
		if session[:user_id]
			User.find(session[:user_id])
	#	else
	#		self.admin = false
		end
	end
	
	def empty_entry
		Entry.new
	end



end
