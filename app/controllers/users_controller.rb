class UsersController < ApplicationController
	def create
		@user = User.new(params[:user])
		if @user.save
			UserNotifierMailer.send_signup_email(@user).deliver
			redirect_to @user, :notice => "Signed up!"
		else
			render :action => 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end