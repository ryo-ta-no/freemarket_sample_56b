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

crumb :goods_detail do
  link "出品商品画面", goods_detail_item_path
  parent :goods_user
end


crumb :update_user do
  link "本人情報の登録",items_path
  parent :index_user
end