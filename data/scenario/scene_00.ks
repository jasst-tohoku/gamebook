*start

[cm]
[clearfix]

@chara_hide_all

;背景を設定
@bg storage="white.jpg" time=1000
@bg storage="bg_main.jpg" time=1000

;メッセージウィンドウの表示
@layopt layer="message0" visible=true

;メニューボタンの表示
@showmenubutton


@chara_show name="main"
_　わたしは「じゃすと東北株式会社」の社員だ。[l][r]
_　わたしはそこで……[l][r]
[r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）プロジェクトマネージャをすることになった。[endlink][resetfont][r]
_　　（組織に対するシステムテスト自動化導入）[r]
[font color="0xffd700"][link target="*selectB"]Ｂ）組み込み開発の自動テストに取り掛かろうとしている。[endlink][resetfont][r]
_　　（組み込みテスト駆動開発）[r]
[font color="0xffd700"][link target="*selectC"]Ｃ）組織管理者としてシステムテストのコスト削減を検討している。[endlink][resetfont][r]
_　　（システムテスト自動化のコストや効果）[r]
[font color="0xffd700"][link target="*selectD"]Ｄ）開発者として自動テストを用いた開発を試そうとしている。[endlink][resetfont][r]
_　　（単体テスト自動化、テスト駆動開発）[r]
[endnowait]
[s]

*selectA
@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@bg storage="caption_01.jpg" time=1500 method="fadeInLeft"
[l]
[cm]
@bg storage="bg_main.jpg" time=1000
@layopt layer="message0" visible=true
@showmenubutton
@jump storage="scene_01_01.ks" target="*start"
[s]

*selectB
@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@bg storage="caption_02.jpg" time=1500 method="fadeInLeft"
[l]
[cm]
@bg storage="bg_main.jpg" time=1000
@layopt layer="message0" visible=true
@showmenubutton
@jump storage="scene_02_01.ks" target="*start"
[s]

*selectC
@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@bg storage="caption_03.jpg" time=1500 method="fadeInLeft"
[l]
[cm]
@bg storage="bg_main.jpg" time=1000
@layopt layer="message0" visible=true
@showmenubutton
@jump storage="scene_03_01.ks" target="*start"
[s]

*selectD
@chara_hide_all
@hidemenubutton
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@bg storage="caption_04.jpg" time=1500 method="fadeInLeft"
[l]
[cm]
@bg storage="bg_main.jpg" time=1000
@layopt layer="message0" visible=true
@showmenubutton
@jump storage="scene_04_01.ks" target="*start"
[s]
