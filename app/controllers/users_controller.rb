class UsersController < ApplicationController

  def index
    @items = Item.all
    @photos = Photo.all
  end

  def show
  end


  def update
  end

  def edit
  end

  def goods
    @items = Item.all
    @photos = Photo.all
    # @items = Item.where().order("id DESC").page(params[:page]).per(15)
  end

end
