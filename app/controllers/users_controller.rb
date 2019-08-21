class UsersController < ApplicationController

  def show
  end

  def edit
  end

  def goods
    @items = Item.all
    @photos = Photo.all
    # @items = Item.where().order("id DESC").page(params[:page]).per(15)
  end

  def goods_detail
  end

  def destroy
    @item = Item.find(id: params[:id])
    @item.destroy
    redirect_to item_path
    # 削除されるとそのページはなくなるので、違うページに遷移する
  end

end
