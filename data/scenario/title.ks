;タイトル画面

[cm]

@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@clearstack
@bg storage="title.jpg" time=100
@wait time=200

*start
;「まえがき」ボタン
@button x=450 y=330 graphic="title/button_foreword.jpg" enterimg="title/button_foreword.jpg" target="foreword"

;「はじめから」ボタン
@button x=450 y=430 graphic="title/button_start.jpg" enterimg="title/button_start.jpg" target="gamestart"

[s]

*foreword
@jump storage="foreword.ks"
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene_01.ks"
[s]