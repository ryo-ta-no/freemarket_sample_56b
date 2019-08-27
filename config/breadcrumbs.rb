crumb :root do
  link "メルカリ", root_path
end

crumb :index_user do
  link "マイページ", users_path
  parent :root
end

crumb :edit_user do
  link "プロフィール", user_path
  parent :index_user
end


crumb :goods_user do
  link "出品した商品 - 出品中", goods_user_path
  parent :index_user
end

crumb :purchase_user do
  link "購入した商品 - 取引中", purchase_user_path
  parent :index_user
end

crumb :goods_detail do
  link "出品商品画面", goods_detail_item_path
  parent :goods_user
end


crumb :update_user do
  link "本人情報の登録",items_path
  parent :index_user
end

crumb :logout_page do
  link "ログアウト", userlogout_ragistrations_path
  parent :index_user
end

crumb :paypay do
  link "支払方法", mypay_cards_path
  parent :index_user
end

crumb :add_card do
  link "クレジットカードを追加する",  delete_cards_path
  parent :paypay 
end

crumb :create_card do
  link "クレジットカード一覧", new_card_path
  parent :paypay
end
