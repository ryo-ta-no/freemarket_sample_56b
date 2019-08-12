class ItemsController < ApplicationController
 
  def index
    
  end


  def new
    @category = Category.all.order("id ASC").limit(13)
    @postage = Postage.all.order("id ASC").limit(2)
    @prefecture = Prefecture.all
    @postage_day = PostageDay.all
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







  def show
    @search_params = user_search_params
    @prefecrure = Prefecture.all
  end
  

private

  def user_search_params
    params.fetch(:search, {}).permit(:id,:prefecture)
  end
end

