class UsersController < ApplicationController

  def index
    @user = User.find_by(id: current_user)
  end

  def show
    user = User.find(params[:id])
    @search_params = user_search_params
    @prefecrure = Prefecture.all
  end


  def update
  end

  def edit
    @user = User.find(params[:id])
  end

  def purchase
    @items = Item.where(user: current_user)
    @photos = Photo.where(params[:use_id])
  end


  def goods
    @items = Item.where(user: current_user)
  end

  private

  def user_search_params
    params.fetch(:search, {}).permit(:id,:prefecture)
  end

end
