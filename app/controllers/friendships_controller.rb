class FriendshipsController < ApplicationController
	def create
 		@friendship = @current_user.friendships.build(friend_id: params[:friend_id])
 		if @friendship.save
   		flash[:notice] = "Friend requested."
   		redirect_to findfriends_path
 		else
   		flash[:error] = "Unable to request friendship."
   		redirect_to findfriends_path
		end
	end

	def index
		@users = User.all
	end

 	def update
 	@friendship = Friendship.find_by(id: params[:id])
 	@friendship.update(status: "accepted")
   	if @friendship.save
     	redirect_to findfriends_path, flash[:notice] = "Successfully confirmed friend!"
   	else
     	redirect_to findfriends_path
   	end
 	end

 	def destroy
   	@friendship = Friendship.find_by(id: params[:id])
   	@friendship.destroy
   	flash[:notice] = "Removed friendship."
   	redirect_to findfriends_path
 	end
end
