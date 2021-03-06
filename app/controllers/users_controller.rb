class UsersController < ApplicationController

	before_action :check_if_logged_in, :only => [:edit]
	before_action :check_if_admin, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
		@user.dp = "no_pic.jpg"
    if @user.save
			profile = Profile.new
			profile.user = @user
			profile.save
			# raise 'hell'
			session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

	def edit
		redirect_to root_path unless @current_user.id == params[:id].to_i
		@user = User.find params[:id]
	end

	def update
		user = @current_user
		user.update user_params
		redirect_to root_path
	end

	def index
		@users = User.all
	end

	def show

	end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :country, :state, :postcode, :dob, :gender)
  end
end
