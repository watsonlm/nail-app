class User < ApplicationRecord
	has_many :user_polishes
	has_many :polishes, through: :user_polishes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
