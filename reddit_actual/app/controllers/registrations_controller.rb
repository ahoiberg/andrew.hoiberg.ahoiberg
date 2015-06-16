class RegistrationsController < Devise::RegistrationsController

	private
		params.require(:user).permit(:username, :password, :password_confirmation)
	end
end