class WelcomeController < ApplicationController
  def index
  end

  def gallery
  end

  def nail_art
  end

  def collection
  	@user = User.find(params[:user_id])
  	@collection = Polish.includes(:user_polishes).where(user_polishes: {user_id: @user.id})
  end
end
