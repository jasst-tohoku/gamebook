;プロジェクトマネージャ編3

*goToTitle
@jump storage="title.ks"


*start

[cm]

[font color="0xffd700"]Ｃ）どちらも机上で検討をしているだけで、実際に試してみていない。両方のツールを、まずはトライアル（パイロット）として一定期間試用してから判断だ。[resetfont][l][r]
[r]
_　テストリーダーと部長には、「両方のツールについてトライアルを行った上で判断をする」と説明し、納得はしてもらえた。[l][r]
_　一旦はテストリーダーからのトライアル報告を待つことにしよう。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　２週間後、テストリーダーからトライアルの報告があった。[l][r]
@chara_show name="leader"
_　概要は以下のようなものだった。[l][r]
[r]
@layopt layer="message0" visible=false
@playse storage="se/se_paper.ogg"
@image layer=2 storage=table_01.png visible=true top=140 left=150
[l]
@playse storage="voice/scene_01_03/leader-01-03-01.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-02.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-03.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-04.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-05.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-06.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-07.ogg"
[l]
@playse storage="voice/scene_01_03/leader-01-03-08.ogg"
[l]
@layopt layer="message0" visible=true
@chara_hide name="leader"
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[r]
_ どちらのツールを使おうか。[l][r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）部長が薦めてきたツール[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）テストリーダーが検討していたツール[endlink][resetfont][r]
[endnowait]
[s]

*selectA
@layopt layer=2 visible=false
@jump storage="scene_01_04_A.ks" target="*start"
[s]


*selectB
@layopt layer=2 visible=false
@jump storage="scene_01_04_B.ks" target="*start"
[s]
