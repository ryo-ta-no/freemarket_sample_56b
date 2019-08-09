class ItemsController < ApplicationController
 
  def index
  end

  def new
    @category = Category.all.order("id ASC").limit(13)
  end
end
