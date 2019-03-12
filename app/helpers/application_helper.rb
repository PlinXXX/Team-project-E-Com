module ApplicationHelper

	def authenticate_user
		unless current_user
			redirect_to '/'
		end
	end
end
