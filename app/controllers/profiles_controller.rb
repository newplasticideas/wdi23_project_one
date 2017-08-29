class ProfilesController < ApplicationController
  def edit
		@current_user = User.find params[:id]
  end

	def update
	end
end
