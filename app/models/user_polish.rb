class UserPolish < ApplicationRecord
	belongs_to :user
	belongs_to :polish, counter_cache: :owned
end
