class ItemsController < ApplicationController

  def index
    # @items = Item.find(params[:id])

    @parents = Category.where(ancestry: nil).order("id ASC").limit(9)

  end

  def search
    @parents = Category.all.order("id ASC").limit(13)
    @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%").order("created_at DESC").page(params[:page]).per(15)
    if params[:keyword] == ""
      redirect_to '/'
    end
    if @items.count == 0
      @all_items = Item.limit(25).order("id ASC")
    end
  end

  def edit
    @item = Item.find(21)
    @photo = @item.photos
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
    if @item.save
    redirect_to root_path
    else redirect_to new_item_path
    end
  end




  def show
    @items = Item.find(params[:id])
  end

  def goods_detail
    @items = Item.find(params[:id])
    @photos = Photo.where(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    if item.user_id == current_user.id
      item.destroy
      redirect_to :controller => "users", :action => "goods", :id => current_user.id
    end
  end

  


  private

  def user_search_params
    params.fetch(:search, {}).permit(:id,:prefecture)
  end

  def item_params
    params.require(:item).permit(:state_id, :name, :explain, :category_id, :price, :buyer_id, :postage_id, :prefecture_id, :postage_day_id, photos_attributes: [:id, :img]).merge(user_id: current_user.id, shipping_date: 1, size_id: 1, brand_id: 1)
  end

end

