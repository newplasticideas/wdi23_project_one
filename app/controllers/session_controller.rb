class SessionController < ApplicationController
  def new
  end

	def create
		@current_user = User.find_by :email => params[:email]
		if @current_user.present? && @current_user.authenticate(params[:password])
			session[:user_id] = @current_user.id
			redirect_to root_path
		else
			flash[:error] = "Invalid email or password"
			redirect_to login_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end
