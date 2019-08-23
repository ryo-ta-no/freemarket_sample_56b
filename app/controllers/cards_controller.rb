class CardsController < ApplicationController
  
    require "payjp"
    # before_action :set_card
  

  def index #CardのデータをPayjpに送って情報を取り出す
 

    if @card.present?
      Payjp.api_key = "sk_test_e1ae6a554565547f186622ad"
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
  
      # 《＋α》 登録しているカード会社のブランドアイコンを表示するためのコードです。---------
      @card_brand = @card_information.brand      
      case @card_brand
      when "Visa"
        @card_src = "visa.svg"
      when "JCB"
        @card_src = "jcb.svg"
      when "MasterCard"
        @card_src = "master-card.svg"
      when "American Express"
        @card_src = "american_express.svg"
      when "Diners Club"
        @card_src = "dinersclub.svg"
      when "Discover"
        @card_src = "discover.svg"
      end
     
    end
  end

    def new # カードの登録画面。送信ボタンを押すとcreateアクションへ。
     
      # card = Card.where(user_id: current_user.id).first
      # redirect_to action: "index" if card.present?
      
    end
  
    def pay #PayjpとCardのデータベースを作成
      
      Payjp.api_key = 'sk_test_e1ae6a554565547f186622ad'
     
      if params['payjp-token'].blank?
        redirect_to action: "new"
      else
        # トークンが正常に発行されていたら、顧客情報をPAY.JPに登録します。
        customer = Payjp::Customer.create(
          description: 'test', # 無くてもOK。PAY.JPの顧客情報に表示する概要です。
       
          card: params['payjp-token'], # 直前のnewアクションで発行され、送られてくるトークンをここで顧客に紐付けて永久保存します。
          # metadata: {user_id: current_user.id} # 無くてもOK。
        )
    
        @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
        if @card.save
          redirect_to action: "show"
         
        else
          redirect_to action: "create"
        end
      end
    end

    # def delete #PayjpとCardのデータベースを削除
    #   Payjp.api_key = "sk_test_e1ae6a554565547f186622ad"
    #   customer = Payjp::Customer.retrieve(@card.customer_id).first
    #   customer.delete
    #   if @card.destroy #削除に成功した時にポップアップを表示します。
    #    redirect_to action: "new", notice: "削除しました"
    #   else #削除に失敗した時にアラートを表示します。
    #    redirect_to action: "index", alert: "削除できませんでした"
    #   end
    #   end
    def delete #PayjpとCardデータベースを削除します
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
        Payjp.api_key = "sk_test_e1ae6a554565547f186622ad"

        card = Card.where(user_session).first
       if card.present?
         customer = Payjp::Customer.retrieve(card.customer_id)
         @default_card_information = customer.cards.retrieve(card.card_id)
       

         
       end
      end


  # def show
 
  #   card = Card.where(user_id: current_user.id).first
  #   if card.blank?
  #     redirect_to action: "new" 
  #   else
  #     Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
  #     customer = Payjp::Customer.retrieve(card.customer_id)
  #     @default_card_information = customer.cards.retrieve(card.card_id)
    
  # end


    # private
   
    # def set_card

    #   @card = Card.where(user_id: current_user.id).first 
    # end

    end





# class CardsController < ApplicationController

#   require "payjp"

#   def new
#     card = Card.where(user_id: current_user.id)
#     redirect_to action: "show" if card.exists?
#   end

#   def pay #payjpとCardのデータベース作成を実施します。
#     Payjp.api_key = "sk_test_e1ae6a554565547f186622ad"
#     if params['payjp-token'].blank?
#       redirect_to action: "new"
#     else
#       customer = Payjp::Customer.create(
#       description: '登録テスト', #なくてもOK
#       email: current_user.email, #なくてもOK
#       card: params['payjp-token'],
#       metadata: {user_id: current_user.id}
#       ) #念の為metadataにuser_idを入れましたがなくてもOK
#       @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
#       if @card.save
#         redirect_to action: "show"
#       else
#         redirect_to action: "pay"
#       end
#     end
#   end

#   def delete #PayjpとCardデータベースを削除します
#     card = Card.where(user_id: current_user.id).first
#     if card.blank?
#     else
#       Payjp.api_key = "sk_test_e1ae6a554565547f186622ad"
#       customer = Payjp::Customer.retrieve(card.customer_id)
#       customer.delete
#       card.delete
#     end
#       redirect_to action: "new"
#   end

#   def show #Cardのデータpayjpに送り情報を取り出します
#     card = Card.where(user_id: current_user.id).first
#     if card.blank?
#       redirect_to action: "new" 
#     else
#       Payjp.api_key = "sk_test_e1ae6a554565547f186622ad"
#       customer = Payjp::Customer.retrieve(card.customer_id)
#       @default_card_information = customer.cards.retrieve(card.card_id)
#     end
#   end
# end