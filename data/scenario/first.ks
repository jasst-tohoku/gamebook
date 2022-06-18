;一番最初に呼び出されるファイル

@title name="テスト自動化そのまえに-JaSST'22TohokuNovel"

@stop_keyconfig


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;キャラクター定義
;主人公
@chara_new name="main" storage="chara/main/main_stand.png"
@chara_face name="main" face="orz" storage="chara/main/main_orz.png"
@chara_face name="main" face="down" storage="chara/main/main_down.png"

;部長
@chara_new name="manager" storage="chara/manager/manager_stand.png"

;リーダー
@chara_new name="leader" storage="chara/leader/leader_stand.png"

;QA
@chara_new name="qa" storage="chara/qa/qa_stand.png"

;ゴッドハンド
@chara_new name="godhand" storage="chara/godhand/godhand_stand.png"

;インフラ
@chara_new name="infra" storage="chara/infra/infra_stand.png"

;BGM設定
@bgmopt volume=10

;メッセージウィンドウの設定
@position layer="message0" page="fore" left=90 top=5 width=1100 height=710 visible=false

;文字が表示される領域を調整
@position layer="message0" page="fore" margint=10 marginl=50 marginr=70 marginb=30 visible=false

;メッセージボックスは非表示
@layopt layer="message0" visible=false

;最初は右下のメニューボタンを非表示にする
@hidemenubutton

;マクロ定義

;クリック待ち（改行あり）／バックログ反映
[macro name="lr"]
[l][r]
[iscript]
tf.system.backlog.push("");
[endscript]
[endmacro]

;BAD END
[macro name="badend"]
[cm]
@eval exp="tf.fromEnd=true"
@layopt layer="message0" visible=false
@playse storage="se/se_bad_end.ogg"
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" storage=%storage target=%target|"choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
[endmacro]

;END
[macro name="end"]
[cm]
@eval exp="tf.fromEnd=true"
@chara_hide_all
@layopt layer="message0" visible=false
@playse storage="se/se_end.ogg"
@bg storage="end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" storage=%storage target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
[endmacro]

;HAPPY END
[macro name="happyend"]
[cm]
@chara_hide_all
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@playse storage="se/se_happy_end.ogg"
@bg storage="happy_end.jpg" time=1500 method="fadeIn"
[l]
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
[endmacro]

;BAD ENDからのリストア
[macro name="restore"]
[if exp="tf.fromEnd==true"]
  @bg storage="bg_main.jpg" time=100
  @chara_show name="main"
  @chara_mod name="main" face="default"
  @layopt layer=%layer|"message0" visible=true
  @current layer=%layer|"message0"
  @playbgm storage="scene.ogg"
  @eval exp="tf.fromEnd=false"
[endif]
[endmacro]

;レイヤ切り替えマクロ
[macro name="switchlayer0"]
@layopt layer=1 visible=false
@layopt layer="message1" visible=false
@layopt layer="message0" visible=true
@current layer="message0"
[endmacro]

[macro name="switchlayer1"]
@layopt layer="message0" visible=false
@layopt layer="message1" visible=true
@current layer="message1"
@layopt layer=1 visible=true
[endmacro]


;タイトル画面へ移動
*goToTitle
@eval exp="tf.fromEnd=false"
@jump storage="title.ks"

[s]
