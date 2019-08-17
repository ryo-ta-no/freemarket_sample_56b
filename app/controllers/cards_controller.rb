class CardsController < ApplicationController
  require "payjp"
  before_action :set_card

  def new # カードの登録画面。送信ボタンを押すとcreateアクションへ。
   
  end

  def create #PayjpとCardのデータベースを作成
    Payjp.api_key = 'sk_test_e1ae6a554565547f186622ad'

    if params['payjp-token'].blank?
      redirect_to action: "index"
    else
      # トークンが正常に発行されていたら、顧客情報をPAY.JPに登録します。
      customer = Payjp::Customer.create(
        description: 'test', # 無くてもOK。PAY.JPの顧客情報に表示する概要です。
        email: current_user.email,
        card: params['payjp-token'], # 直前のnewアクションで発行され、送られてくるトークンをここで顧客に紐付けて永久保存します。
        metadata: {user_id: current_user.id} # 無くてもOK。
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "show"
      else
        redirect_to action: "create"
      end
    end
  end

  def confirmation
    
  end

  def show
    
     card = Card.where(user_session).first
    # if card.present?
    #   customer = Payjp::Customer.retrieve(card.customer_id)
    #   @default_card_information = customer.cards.retrieve(card.card_id)
    # else
    #   redirect_to action: "confirmation"
    # end
  end
  

  private

  def set_card
    @card = Card.where(user_session).first 
  end
end