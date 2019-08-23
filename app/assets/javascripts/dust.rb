// document.addEventListener(
//   "DOMContentLoaded", (e) => {
//     Payjp.setPublicKey("pk_test_57f5b7abfc1b1cbd41160d6a");
//     const btn = document.getElementById('token_submit'); //IDがtoken_submitの場合に取得されます
//     btn.addEventListener("click", (e) => {　//ボタンが押されたときに作動します
//       e.preventDefault();　//ボタンを一旦無効化します

//       //カード情報生成
//       const card = {
//         number: document.getElementById("card_number").value,
//         cvc: document.getElementById("cvc").value,
//         exp_month: document.getElementById("exp_month").value,
//         exp_year: document.getElementById("exp_year").value
//       }; //入力されたデータを取得します。

//       //トークン生成
//       Payjp.createToken(card, (status, response) => {
//         if (status === 200) { //成功した場合
//           $("#card_number").removeAttr("name");
//           $("#cvc").removeAttr("name");
//           $("#exp_month").removeAttr("name");
//           $("#exp_year").removeAttr("name"); //カード情報を自分のサーバにpostせず削除します
//           $("#card_token").append(
//             $('<input type="hidden" name="payjp-token">').val(response.id)
//           ); //トークンを送信できるように隠しタグを生成
//           document.inputForm.submit();
//           alert("登録が完了しました"); //確認用
//         } else {
//           alert("カード情報が正しくありません。"); //確認用
//         }
//       });
//     });
//   },false);

:javascript
  document.addEventListener(
  "DOMContentLoaded", e => {
    if (document.getElementById("token_submit") != null) { //token_submitというidがnullの場合、下記コードを実行しない
      Payjp.setPublicKey("sk_test_e1ae6a554565547f186622ad"); //ここに公開鍵を直書き
      let btn = document.getElementById("token_submit"); //IDがtoken_submitの場合に取得されます
      btn.addEventListener("click", e => { //ボタンが押されたときに作動します
        e.preventDefault(); //ボタンを一旦無効化します
        let card = {
          number: document.getElementById("card_number").value,
          cvc: document.getElementById("cvc").value,
          exp_month: document.getElementById("exp_month").value,
          exp_year: document.getElementById("exp_year").value
        }; //入力されたデータを取得します。
        Payjp.createToken(card, (status, response) => {
          if (status === 200) { //成功した場合
            $("#card_number").removeAttr("name");
            $("#cvc").removeAttr("name");
            $("#exp_month").removeAttr("name");
            $("#exp_year").removeAttr("name"); //データを自サーバにpostしないように削除
            $("#card_token").append(
              $('<input type="hidden" name="payjp-token">').val(response.id)
            ); //取得したトークンを送信できる状態にします
            document.inputForm.submit();
            alert("登録が完了しました"); //確認用
          } else {
            alert("カード情報が正しくありません。"); //確認用
          }
        });
      });
    }
  },
  false
   );

   -# -# .content__title
-# -#   %h2 支払い方法
-# -# .content__credit-cards
-# -#   %h3 クレジットカード一覧
-# -#   %ul.content__credit-cards__list
-# -#     %li
-# -#       = form_with url: delete_cards_path(@card.id), method: :post, local: true, id: 'charge-form' do |f|
-# -#         -# カードブランドのアイコンを表示する場合-----
-# -#         %figure
-# -#           -# = image_tag "credit-cards/#{@card_src}", width: '26', height: '20', alt: @card_brand, id: "card_image"
-# -#         -#----------------------------------
-# -#         .content__credit-cards__list--pay-num
-# -#           = "**** **** **** " + @card_information.last4
-# -#         .content__credit-cards__list--pay-num
-# -#           - exp_month = @card_information.exp_month.to_s
-# -#           - exp_year = @card_information.exp_year.to_s.slice(2,3)
-# -#           = exp_month + " / " + exp_year
-# -#         %input{type: "hidden", name: "card_id", value: ""}
-# -#         = f.submit "削除する", {class: "content__credit-cards__list__remove"}
-# -#         - if flash[:notice]
-# -#           .alert.alert-success
-# -#           = flash[:notice]
-# -#         - if flash[:alert]
-# -#           .alert.alert-dange
-# -#           = flash[:alert]

-# .payment-box
-#   .payment-center-box
-#     .__payment-small-text
-#       支払い方法
-#     .__payment-small-box
-#       .__payment-list-box
-#         = form_with  url:  ragistrations_path , method: :post, action: :create ,local: true ,html: {name: "inputForm"} do |pay|
-#           .__l-payment-form
-#             .__l-p-text
-#               = pay.label :"カード番号"
-#             .__l-p-required
-#               必須
-#           = pay.text_field :card_naumber, placeholder: "半角数字のみ", class: "text-payment",maxlength: "16", type: "text", id: "card_number"

-#           .__l-payment-form
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/visa.svg?917505326", width:  "49"}
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/master-card.svg?917505326", width:  "34"}
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/saison-card.svg?917505326", width:  "30"}
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/jcb.svg?917505326", width:  "32"}
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/american_express.svg?917505326", width:  "21"}
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/dinersclub.svg?917505326", width:  "32"}
-#           %img{alt:  "", height:  "20", src:  "//www-mercari-jp.akamaized.net/assets/img/card/discover.svg?917505326", width:  "32"}


-#           .__l-payment-form
-#             .__l-p-text
-#               = pay.label :"有効期限"
-#             .__l-p-required
-#               必須
-#           .__payment-pull-box
-#             .__payment-pull-mouth
-#             = pay.select :exp_month, [["--",""],["01",1],["02",2],["03",3],["04",4],["05",5],["06",6],["07",7],["08",8],["09",9],["10",10],["11",11],["12",12]],{} , class: 'card-information-box__select '
-#             = render "user-shared/pull-down-birthday/pull-mouth"
-#             .__payment-pull-text
-#               月
-#             .__payment-pull-day
-#             = pay.select :exp_year, [["--",""],["19",2019],["20",2020],["21",2021],["22",2022],["23",2023],["24",2024],["25",2025],["26",2026],["27",2027],["28",2028],["29",2029]],{} , class: 'card-information-box__select'
-#             = render "user-shared/pull-down-birthday/pull-short-year"
-#             .__payment-pull-text
-#               年

-#           .__l-payment-form
-#             .__l-p-text
-#               = pay.label :"セキュリティーコード"
-#             .__l-p-required
-#               必須
-#           = pay.text_field :cvc, class: "cvc",placeholder: " カード背面4桁もしくは3桁の番号", maxlength: "4", id: "cvc"

-#           .__payment-under-text
-#             カード裏面の番号とは？

-#           .__payment-move-on-btn
-#             = pay.submit "次へ進む", class: "payment-move-text",id: "token_submit"

-# :javascript
-#   document.addEventListener(
-#   "DOMContentLoaded", e => {
-#     if (document.getElementById("token_submit") != null) { 
-#       Payjp.setPublicKey("pk_test_57f5b7abfc1b1cbd41160d6a"); 
-#       let btn = document.getElementById("token_submit"); 
-#       btn.addEventListener("click", e => { 
-#         e.preventDefault(); 
-#         let card = {
-#           number: document.getElementById("card_number").value,
-#           cvc: document.getElementById("cvc").value,
-#           exp_month: document.getElementById("exp_month").value,
-#           exp_year: document.getElementById("exp_year").value
-#         }; 
-#         Payjp.createToken(card, (status, response) => {
-#           if (status === 200) { 
-#             $("#card_number").removeAttr("name");
-#             $("#cvc").removeAttr("name");
-#             $("#exp_month").removeAttr("name");
-#             $("#exp_year").removeAttr("name"); 
-#             $("#card_token").append(
-#               $('<input type="hidden" name="payjp-token">').val(response.id)
-#             ); 
-#             document.inputForm.submit();
-#             alert("登録が完了しました"); 
-#           } else {
-#             alert("カード情報が正しくありません。"); 
-#           }
-#         });
-#       });
-#     }
-#   },
-#   false
-#   );