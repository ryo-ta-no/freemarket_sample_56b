class CardsController < ApplicationController

    require "payjp"

    def new
      card = Card.where(user_id: current_user.id)
      if card.exists?
        redirect_to delete_cards_path
      else
        @card = Card.new
      end
    end


    def pay
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      if params['payjp-token'].blank?
        redirect_to action: "new"

      else
        customer = Payjp::Customer.create(
          card: params['payjp-token'],
          # metadata: {user_id: current_user.id}
        )
        @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
        if @card.save
          redirect_to root_path
        else
          redirect_to action: "pay"
        end
      end
    end


    def delete 
      card = Card.where(user_id: current_user.id).first
      if card.blank?
      else
        Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
        customer = Payjp::Customer.retrieve(card.customer_id)
        customer.delete
        card.delete
      end
        redirect_to action: "new"
    end

    def show
        Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]

        card = Card.where(user_session).first
        if card.present?
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
end
