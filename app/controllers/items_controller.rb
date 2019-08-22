class ItemsController < ApplicationController

  def index
    @parents = Category.where(ancestry: nil).limit(13)
  end

  def edit
    @item = Item.find(21)
    # binding.pry
    @photo = @item.photos
    # binding.pry



  end

  def new
    @parents = Category.where(ancestry: nil)
    @category = Category.all.order("id ASC").limit(13)
    @postage = Postage.all.order("id ASC").limit(2)
    @prefecture = Prefecture.all
    @postage_day = PostageDay.all
    @state = State.all
    @item = Item.new
    @item.photos.build
  end

  def category_children
    @category_children = Category.find(params[:productcategory]).children
  end


  def category_grandchildren
    @category_grandchildren = Category.find(params[:productcategory]).children
    end

  def postage_children
    @postage_children = Postage.find(params[:postageitem]).children
  end


  def create
    @item = Item.new(item_params)
    @parents = Category.where(ancestry: nil)
    @item.save
    redirect_to root_path
  end




  def show
    @search_params = user_search_params
    @prefecrure = Prefecture.all
  end

  def goods_detail
    @items = Item.find(params[:id])
    @photos = Photo.where(params[:id])
  end

  def destroy
    @items = Item.find(params[:id])
    @items.destroy
    redirect_to goods_user_path
  end


  private

  def user_search_params
    params.fetch(:search, {}).permit(:id,:prefecture)
  end

  def item_params
    params.require(:item).permit(:state_id, :name, :explain, :category_id, :price, :postage_id, :prefecture_id, :postage_day_id, photos_attributes: [:id, :img]).merge(user_id: 1, buyer_id: 1, shipping_date: 1, size_id: 1, brand_id: 1)
  end

end

