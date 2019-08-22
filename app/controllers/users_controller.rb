class UsersController < ApplicationController

  def index
    
  end

  def show
    user = User.find(params[:id])
    @search_params = user_search_params
    @prefecrure = Prefecture.all
  end


  def update
  end

  def edit
  end

  def goods
    @items = Item.where(user: current_user)
    @photos = Photo.where(params[:use_id])
  end

  private

  def user_search_params
    params.fetch(:search, {}).permit(:id,:prefecture)
  end

end
