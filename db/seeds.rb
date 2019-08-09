# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ category_name: 'Star Wars' }, { category_name: 'Lord of the Rings' }])
#   Character.create(category_name: 'Luke', movie: movies.first)

#categoriesテーブル
lady = Category.create(:category_name=>"レディース")
man = Category.create(:category_name=>"メンズ")
baby = Category.create(:category_name=>"ベビー・キッズ")
home = Category.create(:category_name=>"インテリア・住まい・小物")
book = Category.create(:category_name=>"本・音楽・ゲーム")
hobby = Category.create(:category_name=>"おもちゃ・ホビー・グッズ")
beauty = Category.create(:category_name=>"コスメ・香水・美容")
mech = Category.create(:category_name=>"家電・スマホ・カメラ")
sport = Category.create(:category_name=>"スポーツ・レジャー")
handmade = Category.create(:category_name=>"ハンドメイド")
ticket = Category.create(:category_name=>"チケット")
mobil = Category.create(:category_name=>"自動車・オートバイ")
other = Category.create(:category_name=>"その他")

# レディース
lady_tops = lady.children.create(:category_name=>"トップス")
lady_jacket = lady.children.create(:category_name=>"ジャケット/アウター")
lady_pants = lady.children.create(:category_name=>"パンツ")
lady_skirt = lady.children.create(:category_name=>"スカート")
lady_onepiece = lady.children.create(:category_name=>"ワンピース")
lady_other = lady.children.create(:category_name=>"その他")

lady_tops.children.create([{:category_name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:category_name=>"Tシャツ/カットソー(七分/長袖)"}, {:category_name=>"シャツ/ブラウス(半袖/袖なし)"}, {:category_name=>"シャツ/ブラウス(七分/長袖)"}, {:category_name=>"ポロシャツ"}, {:category_name=>"キャミソール"}, {:category_name=>"タンクトップ"}, {:category_name=>"ホルターネック"}, {:category_name=>"ニット/セーター"}, {:category_name=>"チュニック"}, {:category_name=>"カーディガン/ボレロ"}, {:category_name=>"アンサンブル"}, {:category_name=>"ベスト/ジレ"}, {:category_name=>"パーカー"}, {:category_name=>"トレーナー/スウェット"}, {:category_name=>"ベアトップ/チューブトップ"}, {:category_name=>"ジャージ"}, {:category_name=>"その他"}])
lady_jacket.children.create([{:category_name=>"テーラードジャケット"}, {:category_name=>"ノーカラージャケット"}, {:category_name=>"Gジャン/デニムジャケット"}, {:category_name=>"レザージャケット"}, {:category_name=>"ダウンジャケット"}, {:category_name=>"ライダースジャケット"}, {:category_name=>"ミリタリージャケット"}, {:category_name=>"ダウンベスト"}, {:category_name=>"ジャンパー/ブルゾン"}, {:category_name=>"ポンチョ"}, {:category_name=>"ロングコート"}, {:category_name=>"トレンチコート"}, {:category_name=>"ダッフルコート"}, {:category_name=>"ピーコート"}, {:category_name=>"チェスターコート"}, {:category_name=>"モッズコート"}, {:category_name=>"スタジャン"}, {:category_name=>"毛皮/ファーコート"}, {:category_name=>"スプリングコート"}, {:category_name=>"スカジャン"}, {:category_name=>"その他"}])
lady_pants.children.create([{:category_name=>"デニム/ジーンズ"}, {:category_name=>"ショートパンツ"}, {:category_name=>"カジュアルパンツ"}, {:category_name=>"ハーフパンツ"}, {:category_name=>"チノパン"}, {:category_name=>"ワークパンツ/カーゴパンツ"}, {:category_name=>"クロップドパンツ"}, {:category_name=>"サロペット/オーバーオール"}, {:category_name=>"オールインワン"}, {:category_name=>"サルエルパンツ"}, {:category_name=>"ガウチョパンツ"}, {:category_name=>"その他"}])
lady_skirt.children.create([{:category_name=>"ミニスカート"}, {:category_name=>"ひざ丈スカート"}, {:category_name=>"ロングスカート"}, {:category_name=>"キュロット"}, {:category_name=>"その他"}])
lady_onepiece.children.create([{:category_name=>"ミニワンピース"}, {:category_name=>"ひざ丈ワンピース"}, {:category_name=>"ロングワンピース"}, {:category_name=>"その他"}])
lady_other.children.create([{:category_name=>"スカートスーツ上下"}, {:category_name=>"パンツスーツ上下"}, {:category_name=>"ドレス"}, {:category_name=>"パーティーバッグ"}, {:category_name=>"シューズ"}, {:category_name=>"ウェディング"}])

# メンズ
man_tops = man.children.create(:category_name=>"トップス")
man_jacket = man.children.create(:category_name=>"ジャケット/アウター")
man_pants = man.children.create(:category_name=>"パンツ")
man_suits = man.children.create(:category_name=>"スーツ")
man_other = man.children.create(:category_name=>"その他")

man_tops.children.create([{:category_name=>"トップス"}, {:category_name=>"アウター"}, {:category_name=>"パンツ"}, {:category_name=>"おくるみ"}, {:category_name=>"下着/肌着"}, {:category_name=>"パジャマ"}, {:category_name=>"ロンパース"}, {:category_name=>"その他"}])
man_jacket.children.create([{:category_name=>"コート"}, {:category_name=>"ジャケット/上着"}, {:category_name=>"トップス(Tシャツ/カットソー)"}, {:category_name=>"トップス(トレーナー)"}, {:category_name=>"トップス(チュニック)"}, {:category_name=>"トップス(タンクトップ)"}, {:category_name=>"トップス(その他)"}])
man_pants.children.create([{:category_name=>"デニム/ジーンズ"}, {:category_name=>"ショートパンツ"}, {:category_name=>"カジュアルパンツ"}, {:category_name=>"ハーフパンツ"}, {:category_name=>"チノパン"}, {:category_name=>"ワークパンツ/カーゴパンツ"}, {:category_name=>"クロップドパンツ"}, {:category_name=>"サロペット/オーバーオール"}, {:category_name=>"オールインワン"}, {:category_name=>"サルエルパンツ"}, {:category_name=>"ガウチョパンツ"}, {:category_name=>"その他"}])
man_suits.children.create([{:category_name=>"パンツ"}, {:category_name=>"セットアップ"}, {:category_name=>"パジャマ"}, {:category_name=>"フォーマル/ドレス"}, {:category_name=>"和服"}, {:category_name=>"浴衣"}, {:category_name=>"甚平"}, {:category_name=>"水着"}, {:category_name=>"その他"}])
man_other.children.create([{:category_name=>"スニーカー"}, {:category_name=>"サンダル"}, {:category_name=>"ブーツ"}, {:category_name=>"長靴"}, {:category_name=>"靴下/スパッツ"}, {:category_name=>"帽子"}, {:category_name=>"エプロン"}, {:category_name=>"サスペンダー"}, {:category_name=>"タイツ"}, {:category_name=>"ハンカチ"}, {:category_name=>"バンダナ"}, {:category_name=>"ベルト"}, {:category_name=>"マフラー"}, {:category_name=>"傘"}, {:category_name=>"手袋"}, {:category_name=>"スタイ"}, {:category_name=>"バッグ"}, {:category_name=>"その他"}])

# ベビー
baby_girl = baby.children.create(:category_name=>"ベビー服(女の子用)")
baby_boy = baby.children.create(:category_name=>"ベビー服(男の子用)")
baby_item = baby.children.create(:category_name=>"子ども用ファッション小物")
baby_toilet = baby.children.create(:category_name=>"おむつ/トイレ/バス")
baby_other = baby.children.create(:category_name=>"その他")

baby_girl.children.create([{:category_name=>"コート"}, {:category_name=>"ジャケット/上着"}, {:category_name=>"トップス(Tシャツ/カットソー)"}, {:category_name=>"トップス(トレーナー)"}, {:category_name=>"トップス(その他)"}, {:category_name=>"ボトムス"}, {:category_name=>"パジャマ"}, {:category_name=>"その他"}])
baby_boy.children.create([{:category_name=>"コート"}, {:category_name=>"ジャケット/上着"}, {:category_name=>"トップス(Tシャツ/カットソー)"}, {:category_name=>"トップス(トレーナー)"}, {:category_name=>"トップス(その他)"}, {:category_name=>"ボトムス"}, {:category_name=>"パジャマ"}, {:category_name=>"その他"}])
baby_item.children.create([{:category_name=>"おふろのおもちゃ"}, {:category_name=>"がらがら"}, {:category_name=>"オルゴール"}, {:category_name=>"ベビージム"}, {:category_name=>"手押し車/カタカタ"}, {:category_name=>"知育玩具"}, {:category_name=>"その他"}])
baby_toilet.children.create([{:category_name=>"おむつ用品"}, {:category_name=>"おまる/補助便座"}, {:category_name=>"トレーニングパンツ"}, {:category_name=>"ベビーバス"}, {:category_name=>"お風呂用品"}, {:category_name=>"その他"}])
baby_other.children.create([{:category_name=>"お宮参り用品"}, {:category_name=>"お食い初め用品"}, {:category_name=>"アルバム"}, {:category_name=>"手形/足形"}, {:category_name=>"その他"}])


# 家庭用品
home_kitchen = home.children.create(:category_name=>"キッチン/食器")
home_bed = home.children.create(:category_name=>"ベッド/マットレス")
home_sofa = home.children.create(:category_name=>"ソファ/ソファベッド")
home_chair = home.children.create(:category_name=>"椅子/チェア")
home_table = home.children.create(:category_name=>"机/テーブル")
home_other = home.children.create(:category_name=>"その他")

home_kitchen.children.create([{:category_name=>"食器"}, {:category_name=>"調理器具"}, {:category_name=>"収納/キッチン雑貨"}, {:category_name=>"弁当用品"}, {:category_name=>"カトラリー(スプーン等)"}, {:category_name=>"テーブル用品"}, {:category_name=>"容器"}, {:category_name=>"エプロン"}, {:category_name=>"アルコールグッズ"}, {:category_name=>"浄水機"}, {:category_name=>"その他"}])
home_bed.children.create([{:category_name=>"セミシングルベッド"}, {:category_name=>"シングルベッド"}, {:category_name=>"セミダブルベッド"}, {:category_name=>"ダブルベッド"}, {:category_name=>"ワイドダブルベッド"}, {:category_name=>"クイーンベッド"}, {:category_name=>"キングベッド"}, {:category_name=>"脚付きマットレスベッド"}, {:category_name=>"マットレス"}, {:category_name=>"すのこベッド"}, {:category_name=>"ロフトベッド/システムベッド"}, {:category_name=>"簡易ベッド/折りたたみベッド"}, {:category_name=>"収納付き"}, {:category_name=>"その他"}])
home_sofa.children.create([{:category_name=>"ソファセット"}, {:category_name=>"シングルソファ"}, {:category_name=>"ラブソファ"}, {:category_name=>"トリプルソファ"}, {:category_name=>"オットマン"}, {:category_name=>"コーナーソファ"}, {:category_name=>"ビーズソファ/クッションソファ"}, {:category_name=>"ローソファ/フロアソファ"}, {:category_name=>"ソファベッド"}, {:category_name=>"応接セット"}, {:category_name=>"ソファカバー"}, {:category_name=>"リクライニングソファ"}, {:category_name=>"その他"}])
home_chair.children.create([{:category_name=>"一般"}, {:category_name=>"スツール"}, {:category_name=>"ダイニングチェア"}, {:category_name=>"ハイバックチェア"}, {:category_name=>"ロッキングチェア"}, {:category_name=>"座椅子"}, {:category_name=>"折り畳みイス"}, {:category_name=>"デスクチェア"}, {:category_name=>"その他"}])
home_table.children.create([{:category_name=>"こたつ"}, {:category_name=>"カウンターテーブル"}, {:category_name=>"サイドテーブル"}, {:category_name=>"センターテーブル"}, {:category_name=>"ダイニングテーブル"}, {:category_name=>"座卓/ちゃぶ台"}, {:category_name=>"アウトドア用"}, {:category_name=>"パソコン用"}, {:category_name=>"事務机/学習机"}, {:category_name=>"その他"}])
home_other.children.create([{:category_name=>"正月"}, {:category_name=>"成人式"}, {:category_name=>"バレンタインデー"}, {:category_name=>"ひな祭り"}, {:category_name=>"子どもの日"}, {:category_name=>"母の日"}, {:category_name=>"父の日"}, {:category_name=>"サマーギフト/お中元"}, {:category_name=>"夏/夏休み"}, {:category_name=>"ハロウィン"}, {:category_name=>"敬老の日"}, {:category_name=>"七五三"}, {:category_name=>"お歳暮"}, {:category_name=>"クリスマス"}, {:category_name=>"冬一般"}, {:category_name=>"その他"}])

# 本
book_book = book.children.create(:category_name=>"本")
book_manga = book.children.create(:category_name=>"漫画")
book_cd = book.children.create(:category_name=>"CD")
book_game = book.children.create(:category_name=>"テレビゲーム")

book_book.children.create([{:category_name=>"文学/小説"}, {:category_name=>"人文/社会"}, {:category_name=>"ノンフィクション/教養"}, {:category_name=>"地図/旅行ガイド"}, {:category_name=>"ビジネス/経済"}, {:category_name=>"健康/医学"}, {:category_name=>"コンピュータ/IT"}, {:category_name=>"趣味/スポーツ/実用"}, {:category_name=>"住まい/暮らし/子育て"}, {:category_name=>"アート/エンタメ"}, {:category_name=>"洋書"}, {:category_name=>"絵本"}, {:category_name=>"参考書"}, {:category_name=>"その他"}])
book_manga.children.create([{:category_name=>"全巻セット"}, {:category_name=>"少年漫画"}, {:category_name=>"少女漫画"}, {:category_name=>"青年漫画"}, {:category_name=>"女性漫画"}, {:category_name=>"同人誌"}, {:category_name=>"その他"}])
book_cd.children.create([{:category_name=>"邦楽"}, {:category_name=>"洋楽"}, {:category_name=>"アニメ"}, {:category_name=>"クラシック"}, {:category_name=>"K-POP/アジア"}, {:category_name=>"キッズ/ファミリー"}, {:category_name=>"その他"}])
book_game.children.create([{:category_name=>"家庭用ゲーム本体"}, {:category_name=>"家庭用ゲームソフト"}, {:category_name=>"携帯用ゲーム本体"}, {:category_name=>"携帯用ゲームソフト"}, {:category_name=>"PCゲーム"}, {:category_name=>"その他"}])

# 趣味
hobby_toy = hobby.children.create(:category_name=>"おもちゃ")
hobby_card = hobby.children.create(:category_name=>"トレーディングカード")
hobby_figure = hobby.children.create(:category_name=>"フィギュア")
hobby_instrument = hobby.children.create(:category_name=>"楽器/器材")
hobby_other = hobby.children.create(:category_name=>"その他")

hobby_toy.children.create([{:category_name=>"キャラクターグッズ"}, {:category_name=>"ぬいぐるみ"}, {:category_name=>"小物/アクセサリー"}, {:category_name=>"模型/プラモデル"}, {:category_name=>"ミニカー"}, {:category_name=>"トイラジコン"}, {:category_name=>"プラモデル"}, {:category_name=>"ホビーラジコン"}, {:category_name=>"鉄道模型"}, {:category_name=>"その他"}])
hobby_card.children.create([{:category_name=>"遊戯王"}, {:category_name=>"マジック：ザ・ギャザリング"}, {:category_name=>"ポケモンカードゲーム"}, {:category_name=>"デュエルマスターズ"}, {:category_name=>"バトルスピリッツ"}, {:category_name=>"プリパラ"}, {:category_name=>"アイカツ"}, {:category_name=>"カードファイト!!ヴァンガード"}, {:category_name=>"ヴァイスシュヴァルツ"}, {:category_name=>"プロ野球オーナーズリーグ"}, {:category_name=>"ベースボールヒーローズ"}, {:category_name=>"ドラゴンボール"}, {:category_name=>"スリーブ"}, {:category_name=>"その他"}])
hobby_figure.children.create([{:category_name=>"コミック/アニメ"}, {:category_name=>"特撮"}, {:category_name=>"ゲームキャラクター"}, {:category_name=>"SF/ファンタジー/ホラー"}, {:category_name=>"アメコミ"}, {:category_name=>"スポーツ"}, {:category_name=>"ミリタリー"}, {:category_name=>"その他"}])
hobby_instrument.children.create([{:category_name=>"エレキギター"}, {:category_name=>"アコースティックギター"}, {:category_name=>"ベース"}, {:category_name=>"エフェクター"}, {:category_name=>"アンプ"}, {:category_name=>"弦楽器"}, {:category_name=>"管楽器"}, {:category_name=>"鍵盤楽器"}, {:category_name=>"打楽器"}, {:category_name=>"和楽器"}, {:category_name=>"楽譜/スコア"}, {:category_name=>"レコーディング/PA機器"}, {:category_name=>"DJ機器"}, {:category_name=>"DTM/DAW"}, {:category_name=>"その他"}])
hobby_other.children.create([{:category_name=>"トランプ/UNO"}, {:category_name=>"カルタ/百人一首"}, {:category_name=>"ダーツ"}, {:category_name=>"ビリヤード"}, {:category_name=>"麻雀"}, {:category_name=>"パズル/ジグソーパズル"}, {:category_name=>"囲碁/将棋"}, {:category_name=>"オセロ/チェス"}, {:category_name=>"人生ゲーム"}, {:category_name=>"野球/サッカーゲーム"}, {:category_name=>"スポーツ"}, {:category_name=>"三輪車/乗り物"}, {:category_name=>"ヨーヨー"}, {:category_name=>"模型製作用品"}, {:category_name=>"鉄道"}, {:category_name=>"航空機"}, {:category_name=>"アマチュア無線"}, {:category_name=>"パチンコ/パチスロ"}, {:category_name=>"その他"}])

# 美容
beauty_base = beauty.children.create(:category_name=>"ベースメイク")
beauty_makeup = beauty.children.create(:category_name=>"メイクアップ")
beauty_other = beauty.children.create(:category_name=>"その他")

beauty_base.children.create([{:category_name=>"ファンデーション"}, {:category_name=>"化粧下地"}, {:category_name=>"コントロールカラー"}, {:category_name=>"BBクリーム"}, {:category_name=>"CCクリーム"}, {:category_name=>"コンシーラー"}, {:category_name=>"フェイスパウダー"}, {:category_name=>"トライアルセット/サンプル"}, {:category_name=>"その他"}])
beauty_makeup.children.create([{:category_name=>"アイシャドウ"}, {:category_name=>"口紅"}, {:category_name=>"リップグロス"}, {:category_name=>"リップライナー"}, {:category_name=>"チーク"}, {:category_name=>"フェイスカラー"}, {:category_name=>"マスカラ"}, {:category_name=>"アイライナー"}, {:category_name=>"つけまつげ"}, {:category_name=>"アイブロウペンシル"}, {:category_name=>"パウダーアイブロウ"}, {:category_name=>"眉マスカラ"}, {:category_name=>"トライアルセット/サンプル"}, {:category_name=>"メイク道具/化粧小物"}, {:category_name=>"美顔用品/美顔ローラー"}, {:category_name=>"その他"}])
beauty_other.children.create([{:category_name=>"健康用品"}, {:category_name=>"看護/介護用品"}, {:category_name=>"救急/衛生用品"}, {:category_name=>"その他"}])

# 機械
mech_phone = mech.children.create(:category_name=>"スマートフォン/携帯電話")
mech_pc = mech.children.create(:category_name=>"PC/タブレット")
mech_camera = mech.children.create(:category_name=>"カメラ")
mech_other = mech.children.create(:category_name=>"その他")

mech_phone.children.create([{:category_name=>"スマートフォン本体"}, {:category_name=>"バッテリー/充電器"}, {:category_name=>"携帯電話本体"}, {:category_name=>"PHS本体"}, {:category_name=>"その他"}])
mech_pc.children.create([{:category_name=>"タブレット"}, {:category_name=>"ノートPC"}, {:category_name=>"デスクトップ型PC"}, {:category_name=>"ディスプレイ"}, {:category_name=>"電子ブックリーダー"}, {:category_name=>"PC周辺機器"}, {:category_name=>"PCパーツ"}, {:category_name=>"その他"}])
mech_camera.children.create([{:category_name=>"デジタルカメラ"}, {:category_name=>"ビデオカメラ"}, {:category_name=>"レンズ(単焦点)"}, {:category_name=>"レンズ(ズーム)"}, {:category_name=>"フィルムカメラ"}, {:category_name=>"防犯カメラ"}, {:category_name=>"その他"}])
mech_other.children.create([{:category_name=>"ポータブルプレーヤー"}, {:category_name=>"イヤフォン"}, {:category_name=>"ヘッドフォン"}, {:category_name=>"アンプ"}, {:category_name=>"スピーカー"}, {:category_name=>"ケーブル/シールド"}, {:category_name=>"ラジオ"}, {:category_name=>"その他"}])

# スポーツ
sport_fishing = sport.children.create(:category_name=>"フィッシング")
sport_training = sport.children.create(:category_name=>"トレーニング/エクササイズ")
sport_soccer = sport.children.create(:category_name=>"サッカー/フットサル")
sport_other = sport.children.create(:category_name=>"その他")

sport_fishing.children.create([{:category_name=>"ロッド"}, {:category_name=>"リール"}, {:category_name=>"ルアー用品"}, {:category_name=>"ウエア"}, {:category_name=>"釣り糸/ライン"}, {:category_name=>"その他"}])
sport_training.children.create([{:category_name=>"ランニング"}, {:category_name=>"ウォーキング"}, {:category_name=>"ヨガ"}, {:category_name=>"トレーニング用品"}, {:category_name=>"その他"}])
sport_soccer.children.create([{:category_name=>"ウェア"}, {:category_name=>"シューズ"}, {:category_name=>"ボール"}, {:category_name=>"アクセサリー"}, {:category_name=>"記念グッズ"}, {:category_name=>"応援グッズ"}, {:category_name=>"その他"}])
sport_other.children.create([{:category_name=>"ダンス/バレエ"}, {:category_name=>"サーフィン"}, {:category_name=>"バスケットボール"}, {:category_name=>"バドミントン"}, {:category_name=>"バレーボール"}, {:category_name=>"スケートボード"}, {:category_name=>"陸上競技"}, {:category_name=>"ラグビー"}, {:category_name=>"アメリカンフットボール"}, {:category_name=>"ボクシング"}, {:category_name=>"ボウリング"}, {:category_name=>"その他"}])

# ハンドメイド
handmade_item = handmade.children.create(:category_name=>"ファッション/小物")
handmade_accessory = handmade.children.create(:category_name=>"アクセサリー/時計")
handmade_interior = handmade.children.create(:category_name=>"日用品/インテリア")


