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

_　２週間後、テストリーダーからトライアルの報告があった。[l][r]
@chara_show name="leader"
_　概要は以下のようなものだった。どちらのツールを使おうか。[l][r]
[r]
@image layer=1 storage=table_01.png visible=true top=170 left=150
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）部長が薦めてきたツール[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）テストリーダーが検討していたツール[endlink][resetfont][r]
[endnowait]
[s]

*selectA
@layopt layer=1 visible=false
@chara_hide name="leader"
@jump storage="scene_02_04_A.ks" target="*start"
[s]


*selectB
@layopt layer=1 visible=false
@chara_hide name="leader"
@jump storage="scene_02_04_B.ks" target="*start"
[s]
