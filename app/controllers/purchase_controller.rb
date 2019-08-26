class PurchaseController < ApplicationController
  before_action :authenticate ,only: :item_confilm
  require 'payjp'

  def item_confilm
    @item = Item.find(params[:id])
  # card = Card.where(user_id: current_user.id).first
    card = current_user.card
    if card.blank?
      redirect_to controller: "cards", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]

      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)

      @card_brand = @default_card_information.brand
      case @card_brand
      when "Visa"
        @card_src = "visa.png"
      when "JCB"
        @card_src = "jcb.jpeg"
      when "MasterCard"
        @card_src = "master-card.png"
      when "American Express"
        @card_src = "american_express.png"
      when "Diners Club"
        @card_src = "dinersclub.png"
      when "Discover"
        @card_src = "discover.jpeg"
      end
      
    end
  end

  def pay
    @item = Item.find(params[:id])

    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
    :amount => @item.price,
    :customer => card.customer_id,
    :currency => 'jpy', 
  )
  redirect_to action: 'done' 
  end
 
  def done 
    @product_purchaser= Item.find(params[:id])
    @product_purchaser.update( buyer_id: current_user.id)
  end

  def authenticate
    redirect_to new_user_session_path unless user_signed_in?
  end

end
