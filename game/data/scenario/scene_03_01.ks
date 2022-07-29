;組織管理者編1


*start
@chara_hide_all
@playbgm storage="scene.ogg"

[cm]

@chara_show name="main"
[font color="0xffd700"]Ｃ）組織管理者としてシステムテストのコスト削減を検討している。[resetfont][lr]
[r]
_　わたしはシステム開発部Webアプリケーション開発課の課長だ。自社サービス「ジャスペイ」のほか、複数のプロジェクトに携わっている。[lr]
_　ある日、部長からジャスペイ開発プロジェクトで品質に関わる工数の削減を検討するよう指示があった。[lr]
[r]
_　ジャスペイは２年前にリリースした電子決済サービスで、３か月に１度の機能追加を行っている。チームにはPM、開発者、テスト担当者が所属しており、インフラは基盤課が担当している。[lr]
_　わたしはPMを呼び、どんなテストをしているかヒアリングすることにした。[lr]

[cm]
@chara_show name="leader"
@playse storage="voice/scene_03_01/leader-03-01-01.ogg"
「テストは、単体テストと結合テストを開発者、システムテストをテスト担当者が担当しています。[lr]
@playse storage="voice/scene_03_01/leader-03-01-02.ogg"
_　テスト駆動開発を取り入れているので単体テストは自動化してあります。[l][playse storage="voice/scene_03_01/leader-03-01-03.ogg"]……工数削減ですか？　[l][playse storage="voice/scene_03_01/leader-03-01-04.ogg"]結合テストも自動化が進んでいるので、手を入れるならシステムテストですかねぇ」[lr]
[r]
_　そうだ、他のプロジェクトから教わって数年前にテスト駆動開発を取り入れたんだった。ふるまい駆動開発まで持っていけるといいが、今回は置いておくとしよう。[lr]
_　システムテストはどんなテストをしているか、テスト担当者に聞いてみよう。[lr]
@chara_hide name="leader"

[cm]
@chara_show name="godhand"
@playse storage="voice/scene_03_01/godhand-03-01-01.ogg"
「システムテストの内容ですか？　[l][playse storage="voice/scene_03_01/godhand-03-01-02.ogg"]『追加機能のテスト』と『探索的テスト』、『リグレッションテスト』を実施しています」[lr]
_　最近実施したテスト仕様を見せてもらったが、適切にテスト設計されていることも確認できた。テストデータの作成も効率化が済んでいるようだ。テスト実行が自動化できれば、コストが削減できるかもしれない。[lr]
@chara_hide name="godhand"

*choice
[cm]
@restore

_　さて、どのテストを自動化しよう。[lr]

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

[font color="0xffd700"]Ａ）新しく開発した機能のテストは優先度も高く、テストに時間がかかっている。追加機能のテストを自動化する。[resetfont][lr]
[r]
@fadeoutbgm
_　追加機能のテストを自動化したが、工数が膨れ上がってしまった。[lr]
_　これを毎回自動化するのは割に合わない。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　と思っていたら部長から、[lr]
[r]
@playse storage="voice/scene_03_01/manager-03-01-01.ogg"
「そんな暇あったら手動でテストしてください！」[lr]
[r]
_　とお達しが来てしまった。[lr]

@badend storage="scene_03_01.ks"


*selectB
[cm]

[font color="0xffd700"]Ｂ）システムを機械的に探索すれば、探索的テストの工数はかからなくなる。探索的テストを自動化する。[resetfont][lr]
[r]
_　部長がやる気になって、予算をつけ、専属のチームを立ち上げた。[lr]
_　その専属チームでは探索部分にAIの導入を検討しているという。[lr]
[r]
_　——１年後——[lr]
[r]
@fadeoutbgm
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　既に１年が経過したが、何の成果も得られていない。[lr]

@badend storage="scene_03_01.ks"


*selectC
@jump storage="scene_03_02.ks" target="start"
[s]


*selectD
[cm]

[font color="0xffd700"]Ｄ）どのテストかは関係ない。すべてのテストを自動化する。[resetfont][lr]
[r]
@fadeoutbgm
_　追加機能のテストを何とか自動化しようと四苦八苦しているときに開発側から、[lr]
[r]
@playse storage="voice/scene_03_01/mob-03-01-01.ogg"
「もうその案件のテストは手動で終わってるよ」[lr]
[r]
_　と言われ心が折れた。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　全てを自動化は聞こえがいいけど、今の自分達の技術力では無理だった。狙いを絞るべきだった。[lr]

@badend storage="scene_03_01.ks"
