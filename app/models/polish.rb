class Polish < ApplicationRecord
	has_many :user_polishes
	has_many :users, through: :user_polishes
	has_many :comments

	paginates_per 48
end
