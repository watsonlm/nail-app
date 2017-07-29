class Polish < ApplicationRecord
	has_many :user_polishes
	has_many :users, through: :user_polishes
end
