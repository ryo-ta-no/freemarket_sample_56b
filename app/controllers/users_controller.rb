class UsersController < ApplicationController

  def show
  end

  def edit
  end

  def goods
  end

  def goods_detail
  end

  def destroy
    @item = Item.find(id: params[:id])
    @item.destroy
    redirect_to("/")
    # 削除されるとそのページはなくなるので、違うページに遷移する
  end

end
