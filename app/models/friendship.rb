class Friendship < ApplicationRecord
	belongs_tp :user
	belongs_tp :friend, class_name: "User"
end
