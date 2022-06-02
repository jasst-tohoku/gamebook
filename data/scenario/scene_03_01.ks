;組織管理者編1

*goToTitle
@jump storage=title.ks


*start
@chara_hide_all
@playbgm storage="scene.ogg"

[cm]

@chara_show name="main"
[font color="0xffd700"]Ｃ）組織管理者としてシステムテストのコスト削減を検討している。[resetfont][l][r]
[r]
_　わたしはシステム開発部Webアプリケーション開発課の課長だ。自社サービス「ジャスペイ」のほか、複数のプロジェクトに携わっている。[l][r]
_　ある日、部長からジャスペイ開発プロジェクトで品質に関わる工数の削減を検討するよう指示があった。[l][r]
[r]
_　ジャスペイは２年前にリリースした電子決済サービスで、３か月に１度の機能追加を行っている。チームにはPM、開発者、テスト担当者が所属しており、インフラは基盤課が担当している。[l][r]
_　わたしはPMを呼び、どんなテストをしているかヒアリングすることにした。[l][r]

[cm]
@chara_show name="leader"
「テストは、単体テストと結合テストを開発者、システムテストをテスト担当者が担当しています。[l][r]
_　テスト駆動開発を取り入れているので単体テストは自動化してあります。……工数削減ですか？　結合テストも自動化が進んでいるので、手を入れるならシステムテストですかねぇ」[l][r]
[r]
_　そうだ、他のプロジェクトから教わって数年前にテスト駆動開発を取り入れたんだった。ふるまい駆動開発まで持っていけるといいが、今回は置いておくとしよう。[l][r]
_　システムテストはどんなテストをしているか、テスト担当者に聞いてみよう。[l][r]

[cm]

「システムテストの内容ですか？　『追加機能のテスト』と『探索的テスト』、『リグレッションテスト』を実施しています」[l][r]
_　最近実施したテスト仕様を見せてもらったが、適切にテスト設計されていることも確認できた。テストデータの作成も効率化が済んでいるようだ。テスト実行が自動化できれば、コストが削減できるかもしれない。[l][r]
@chara_hide name="leader"

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　さて、どのテストを自動化しよう。[l][r]

[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）新しく開発した機能のテストは優先度も高く、テストに時間がかかっている。追加機能のテストを自動化する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）システムを機械的に探索すれば、探索的テストの工数はかからなくなる。探索的テストを自動化する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）リグレッションテストの内容はほぼ同じなのに、毎回テスト実行に時間がかかっている。リグレッションテストを自動化する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectD"]Ｄ）どのテストかは関係ない。すべてのテストを自動化する。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）新しく開発した機能のテストは優先度も高く、テストに時間がかかっている。追加機能のテストを自動化する。[resetfont][l][r]
[r]
@fadeoutbgm
_　追加機能のテストを自動化したが、工数が膨れ上がってしまった。[l][r]
_　これを毎回自動化するのは割に合わない。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"

_　と思っていたら部長から「そんな暇あったら手動でテストしてください！」とお達しが来てしまった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）システムを機械的に探索すれば、探索的テストの工数はかからなくなる。探索的テストを自動化する。[resetfont][l][r]
[r]
_　部長がやる気になって、予算をつけ、専属のチームを立ち上げた。[l][r]
_　その専属チームでは探索部分にAIの導入を検討しているという。[l][r]
[r]
_　——１年後——[l][r]
[r]
@fadeoutbgm
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"

_　既に１年が経過したが、何の成果も得られていない。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC
@jump storage="scene_03_02.ks" target="start"
[s]


*selectD
[cm]

[font color="0xffd700"]Ｄ）どのテストかは関係ない。すべてのテストを自動化する。[resetfont][l][r]
[r]
@fadeoutbgm
_　追加機能のテストを何とか自動化しようと四苦八苦しているときに開発側から「もうその案件のテストは手動で終わってるよ」と言われ心が折れた。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　全てを自動化は聞こえがいいけど、今の自分達の技術力では無理だった。狙いを絞るべきだった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
