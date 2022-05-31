*start

[cm]
[clearfix]

@chara_hide_all

;メッセージウィンドウの設定
@position layer="message0" left=90 top=5 width=1100 height=710 page=fore visible=true

;文字が表示される領域を調整
@position layer="message0" page="fore" margint=10 marginl=50 marginr=70 marginb=30

;背景を設定
@bg storage="bg_main.jpg" time=100

;メッセージウィンドウの表示
@layopt layer="message0" visible=true

[font size=45]解説[resetfont][l][r]
[r]
[nowait]
HAPPY ENDを達成すると閲覧できます[r]
[r]
[if exp="sf.end02==true"]
  [font color="0xffd700"][link target="*selectA"]Ａ）プロジェクトマネージャ編[endlink][resetfont][r]
[else]
  Ａ）プロジェクトマネージャ編[r]
[endif]
[r]
[if exp="sf.end03==true"]
  [font color="0xffd700"][link target="*selectB"]Ｂ）組込開発者編[endlink][resetfont][r]
[else]
  Ｂ）組込開発者編[r]
[endif]
[r]
[if exp="sf.end04==true"]
  [font color="0xffd700"][link target="*selectC"]Ｃ）組織管理者編[endlink][resetfont][r]
[else]
  Ｃ）組織管理者編[r]
[endif]
[r]
[if exp="sf.end05==true"]
  [font color="0xffd700"][link target="*selectD"]Ｄ）開発者編[endlink][resetfont][r]
[else]
  Ｄ）開発者編[r]
[endif]
[r]
[r]
[font color="0xffd700"][link target="*goToTitle"]タイトルに戻る[endlink][resetfont][r]
[else]
[endif]
[endnowait]
[s]

*selectA
@jump storage="scene_02_commentary.ks" target="*start"
[s]

*selectB
@jump storage="scene_03_commentary.ks" target="*start"
[s]

*selectC
@jump storage="scene_04_commentary.ks" target="*start"
[s]

*selectD
@jump storage="scene_05_commentary.ks" target="*start"
[s]

*goToTitle
@jump storage=title.ks
[s]
