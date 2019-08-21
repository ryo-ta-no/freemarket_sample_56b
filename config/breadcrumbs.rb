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
  parent :show_user
end

crumb :goods_detail do
  link "出品商品画面", goods_detail_user_path
  parent :goods_user
end

# crumbs :user_payment
#   link "支払い方法",
#   parent :show_user
# end

crumb :update_user do
  link "本人情報の登録",items_path
  parent :index_user
end

# crumb :
#   link "カテゴリー一覧",
#   parent :root
# end





# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).