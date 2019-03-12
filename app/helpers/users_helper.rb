module UsersHelper

	def authenticate_user
		unless @user == current_user
			redirect_to '/'
		end
	end
end
