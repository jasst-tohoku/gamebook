;組織管理者編3

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｂ）できる範囲を見極めて、早く効果を出したい。できるところを自動化する。[resetfont][l][r]
[r]
_　機能面は画面上に反映されているかを確認すればよさそうだ。[l][r]
_　画面崩れを自動で検知するには、崩れていない画面との自動比較だろうか……期待値の用意や仕組みの構築には、ちょっと時間がかかりそうだ。[l][r]
_　まずはできるところから始めよう。[l][r]
_　すぐに自動化できそうなテストケースは、６割ほどになった。[l][r]
_　テスト自動化の担当は、最近転職してきた新入社員さんをアサインしよう。システムテストの自動化経験があると言っていた。[l][r]
_　スコープも定まったし、部長に報告だ。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@chara_show name="manager"
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

@playse storage="voice/scene_03_03/manager-03-03-01.ogg"
「システムテストを自動化するんだね。[l][playse storage="voice/scene_03_03/manager-03-03-02.ogg"]自動テストが構築できたら手動テストの工数はゼロになるよね。[l][playse storage="voice/scene_03_03/manager-03-03-03.ogg"]初期構築には工数がかかると思うが、当面は手動テストと同じだけかかると想定していればいいかな？」[l][r]
_　部長は年次の工数計画を確認している。[l][r]
@chara_hide name="manager"
_　なんの工数を計上してもらおうか。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）部長の言う通りの工数を計上してもらう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）自動テストの実装工数を計算しなおして計上してもらう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）自動テストの実装工数のほかに、保守や運用の工数も計上してもらう。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）部長の言う通りの工数を計上してもらう。[resetfont][l][r]
[r]
@fadeoutbgm
_　手動テストと同じ工数では、使用するテストツールの選定までしか終わらなかった。[l][r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　部長からはなぜ何もできていないんだと詰められ、これからは毎回手動で実施することになった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）自動テストの実装工数を計算しなおして計上してもらう。[resetfont][l][r]
[r]
@fadeoutbgm
_　自動テスト担当者は今回使おうとしているツールを使ったことがなかったよう。実装する時間に追われて、保守が難しいテストコードがつくられてしまった。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　最終的にはリグレッションテストを楽にするために自動化したのに、手動テスト工数以上の保守工数がかかってしまっている。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC
@jump storage="scene_03_04.ks" target="start"
[s]
