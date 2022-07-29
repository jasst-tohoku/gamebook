;組織管理者編2


*start

[cm]

[font color="0xffd700"]Ｃ）リグレッションテストの内容はほぼ同じなのに、毎回テスト実行に時間がかかっている。リグレッションテストを自動化する。[resetfont][lr]
[r]
_　リグレッションテストはテストケースやテスト対象の変更が少ないから、自動化したテストを繰り返し実施しやすそうだ。[lr]
[r]
@chara_show name="godhand"
@playse storage="voice/scene_03_02/godhand-03-02-01.ogg"
「リグレッションテストってバグがあまり出ないのにやらないといけないし、毎回同じ内容だし、やっていて退屈だったんです。[l][playse storage="voice/scene_03_02/godhand-03-02-02.ogg"]自動化できると嬉しいです」[lr]
[r]
_　ああ、彼はゴッドハンドの異名を持つ、バグハンターだった。リグレッションテストを自動化すれば、探索的テストに集中してもらえそうだ。[lr]
@chara_hide name="godhand"

*choice
[cm]
@restore

_　改めて、リグレッションテストのテストケースを見せてもらった。[lr]
_　全部で200ケース、内容は「データが登録できること」といった機能に関することや、「画面に崩れがないこと」といった表示に関するものが含まれている。[lr]
_　さて、どのくらい自動化しよう。[lr]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）手動テストを無くさないと効果が薄い。リグレッションテストをすべて自動化する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）できる範囲を見極めて、早く効果を出したい。できるところを自動化する。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）手動テストを無くさないと効果が薄い。リグレッションテストをすべて自動化する。[resetfont][lr]
[r]
@fadeoutbgm
_　正常系のリグレッションテストはそこそこ早く進んだのだがシステムの異常系の実装が難しくてここ１か月は全然進んでいない……。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　最初から100%に拘らず、できるところから自動化する仕組みを作っていけばよかった。[lr]

@badend storage="scene_03_02.ks"


*selectB
@jump storage="scene_03_03.ks" target="*start"
[s]
