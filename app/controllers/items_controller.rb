class ItemsController < ApplicationController
  def index
    
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