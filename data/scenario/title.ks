;タイトル画面

[cm]

@layopt layer="message0" visible=false
@clearstack
@bg storage="title.jpg" time=100
@wait time=200

*start
;「はじめから」ボタン
@button x=450 y=330 graphic="title/button_start.jpg" enterimg="title/button_start.jpg"  target="gamestart"

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene_01.ks"
