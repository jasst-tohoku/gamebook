;組織管理者編2

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｃ）リグレッションテストの内容はほぼ同じなのに、毎回テスト実行に時間がかかっている。リグレッションテストを自動化する。[resetfont][l][r]
[r]
_　リグレッションテストはテストケースやテスト対象の変更が少ないから、自動化したテストを繰り返し実施しやすそうだ。[l][r]
[r]
@chara_show name="godhand"
「リグレッションテストってバグがあまり出ないのにやらないといけないし、毎回同じ内容だし、やっていて退屈だったんです。自動化できると嬉しいです」[l][r]
[r]
_　ああ、彼はゴッドハンドの異名を持つ、バグハンターだった。リグレッションテストを自動化すれば、探索的テストに集中してもらえそうだ。[l][r]
@chara_hide name="godhand"

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　改めて、リグレッションテストのテストケースを見せてもらった。[l][r]
_　全部で200ケース、内容は「データが登録できること」といった機能に関することや、「画面に崩れがないこと」といった表示に関するものが含まれている。[l][r]
_　さて、どのくらい自動化しよう。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）手動テストを無くさないと効果が薄い。リグレッションテストをすべて自動化する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）できる範囲を見極めて、早く効果を出したい。できるところを自動化する。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）手動テストを無くさないと効果が薄い。リグレッションテストをすべて自動化する。[resetfont][l][r]
[r]
@fadeoutbgm
_　正常系のリグレッションテストはそこそこ早く進んだのだがシステムの異常系の実装が難しくてここ１か月は全然進んでいない……。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　最初から100%に拘らず、できるところから自動化する仕組みを作っていけばよかった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
@jump storage="scene_03_03.ks" target="*start"
[s]
