class ProfilesController < ApplicationController
  def edit
		@profile = @current_user.profile
  end

	def show
		@user = User.find params[:id]
		# @user_profile = Profile.where(@user.id == Profile.user_id)
	end

	def update
		profile = @current_user.profile
		profile.update profile_params
		redirect_to home_path
	end
	private
	def profile_params
		params.require(:profile).permit(:layout, :headline, :aboutme, :liketomeet, :interests, :music, :movies, :books, :heroes)
	end
end
