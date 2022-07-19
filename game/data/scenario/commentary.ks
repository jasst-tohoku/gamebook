*start

[cm]
[clearfix]

@layopt layer="message0" visible=false
@nolog
@chara_hide_all
@freeimage layer=1

;背景を設定
@bg storage="white.jpg" time=500
@bg storage="bg_main.jpg" time=500

;メッセージウィンドウの表示
@layopt layer="message0" visible=true
@switchlayer0


;BGMの再生
@playbgm storage="commentary.ogg"

[font size=45]解説[resetfont][lr]
[r]
[nowait]
HAPPY ENDを達成すると閲覧できます[r]
[r]
[if exp="sf.end01==true"]
  [font color="0xffd700"][link target="*selectA"]Ａ）プロジェクトマネージャ編[endlink][resetfont][r]
[else]
  Ａ）？？？？？？編[r]
[endif]
[r]
[if exp="sf.end02==true"]
  [font color="0xffd700"][link target="*selectB"]Ｂ）組込開発者編[endlink][resetfont][r]
[else]
  Ｂ）？？？？？？編[r]
[endif]
[r]
[if exp="sf.end03==true"]
  [font color="0xffd700"][link target="*selectC"]Ｃ）組織管理者編[endlink][resetfont][r]
[else]
  Ｃ）？？？？？？編[r]
[endif]
[r]
[if exp="sf.end04==true"]
  [font color="0xffd700"][link target="*selectD"]Ｄ）開発者編[endlink][resetfont][r]
[else]
  Ｄ）？？？？？？編[r]
[endif]
[r]
[r]
[font color="0xffd700"][link target="*goToTitle"]タイトルに戻る[endlink][resetfont][r]
[endnowait]
[s]

*selectA
@jump storage="scene_01_commentary.ks" target="*start"
[s]

*selectB
@jump storage="scene_02_commentary.ks" target="*start"
[s]

*selectC
@jump storage="scene_03_commentary.ks" target="*start"
[s]

*selectD
@jump storage="scene_04_commentary.ks" target="*start"
[s]

*goToTitle
@stopbgm
@jump storage=title.ks
[s]
