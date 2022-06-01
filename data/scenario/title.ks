;タイトル画面

[cm]

@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@clearstack
@bg storage="black.jpg" time=500
@bg storage="title.jpg" time=100
@wait time=200

*start
;「まえがき」ボタン
@button x=500 y=400 graphic="button/go_to_foreword_off.gif" enterimg="button/go_to_foreword_on.gif" target="foreword"

;「はじめから」ボタン
@button x=500 y=500 graphic="button/go_to_start_off.gif" enterimg="button/go_to_start_on.gif" target="gamestart"

;「解説」ボタン
@button x=500 y=600 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="commentary"

[s]

*foreword
@jump storage="foreword.ks"
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene_00.ks"
[s]

*commentary
@jump storage="commentary.ks"
[s]
