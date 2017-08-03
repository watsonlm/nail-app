class WelcomeController < ApplicationController
  def index
  	@popular = Polish.order(owned: :desc).limit(10)
  end

  def color_search
    @polishes = Polish.all
  end

  def collection
  	@user = User.find(params[:user_id])
  	@collection = Polish.includes(:user_polishes).where(user_polishes: {user_id: @user.id})
  end
end
