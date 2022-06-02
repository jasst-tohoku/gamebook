;プロジェクトマネージャ編2

*goToTitle
@jump storage="title.ks"


*start

[cm]

[font color="0xffd700"]Ａ）システムテスト自動化に関する専門的なスキルを持った担当者をアサインして進めよう。[resetfont][l][r]
[r]
_　まわりに話を聞いてみると、最近転職してきたテストリーダーは前職のWeb開発企業で、複数のプロジェクトでテスト自動化を行ってきたらしい。[l][r]
_　彼が担当者として適任だ、彼を任命しよう。[l][r]
_　話をしたところ、テストリーダーもやる気になってくれた。[l][r]
_　ひとまず任せて、様子を見ることにしよう。[l][r]

[cm]

_　あるときテストリーダーが話しかけてきた。[l][r]
[r]
@chara_show name="leader"
「PMさん、ちょっといいですか？　実は部長が……」[l][r]
[r]
_　テストリーダーが言うには、部長から「懇意にしている会社のテスト自動化ツールを安く提供してもらえるので、これを使うように」と指示があったらしい。[l][r]
_　プロジェクトを任されている自分に断りもなく、勝手な人だ。[l][r]
_　テストリーダーは、過去に使用経験があるツールを使おうと検討を開始していたらしく、事情も知らない部長から突然横槍を入れられて面白くなかったらしい。[l][r]

[cm]

「何度もこのツールで上手くやってきましたし、私には経験があります。 今回のプロジェクトでも間違いなく適用できますよ。[l][r]
_　PMさんからも部長に言ってやってくださいよ」[l][r]

[cm]

_　だんだんヒートアップしてきたテストリーダーを落ち着かせつつ、ひとつ気になる点が出てきた。[l][r]
_　そのテストリーダーの経験があるツールとやらは、今回のプロジェクトで本当に使えるんだろうか？[l][r]
_　経緯はさておき、部長が指示してきたツールのほうがたまたま優れていた、ということもあるかもしれない。[l][r]
_　私はテストリーダーに、今回のプロジェクトでその「経験があるツール」の適用検討は行ったのか、聞いてみた。[l][r]
[r]
「それはまだですが、私が慣れてますから。間違いありませんよ」[l][r]
[r]
_　ずいぶん自信がありそうだな……。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@chara_show name="leader"
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　面倒なことになったが、ここはマネージャとしてビシッと決めねば。[l][r]
[r]
@chara_hide name="leader"
_　どちらのツールを採用しようか。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）安価に使えるツールであれば導入もしやすいはず。部長からの指示があったツールを導入しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）担当であるエンジニアが一番よく理解しているはず。部長には断りを入れて、テストリーダーが選んだツールを導入しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）どちらも机上で検討をしているだけで、実際に試してみていない。両方のツールを、まずはトライアル（パイロット）として一定期間試用してから判断だ。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）安価に使えるツールであれば導入もしやすいはず。部長からの指示があったツールを導入しよう。[resetfont][l][r]
[r]
_　安価に使えるということだったし、何より部長の指示だ。[l][r]
_　なにかあったら部長も責任をとってくれるだろう。[l][r]

[cm]

@fadeoutbgm
_　ところがその予想は外れることになる。[l][r]
[r]
_　既存のリグレッションテストケースをツールで自動化していたが、安価な反面機能が不足していることがわかった。[l][r]
_　細かい部分は自動テストスクリプトを書く必要があり、限られた人しか自動化できない状態になったのだ。[l][r]
_　結果として、バージョンアップ版のテストまでに自動化は完了せず、テストチームが手動で対応せざるを得なくなった。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　テストチームは連日の残業で疲弊し、多くの不具合を見逃したままバージョンアップ版がリリースされていくこととなった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）担当であるエンジニアが一番よく理解しているはず。部長には断りを入れて、テストリーダーが選んだツールを導入しよう。[resetfont][l][r]
[r]
_　部長は素人だ、ここは前職で経験があるテストリーダーの意見を聞くべきだろう。[l][r]
_　上の意見をつっぱねる姿勢を部下に見せておいたほうがPMとしての威厳も出そうだし。[l][r]
[r]
_　私は部長には断りを入れ、テストリーダーが検討しているツールを使用するよう指示した。[l][r]

[cm]

@fadeoutbgm
_　ところがその予想は外れることになる。[l][r]
[r]
_　テストリーダーは対象プロダクトの仕様をよく把握せずに、「使い慣れているから」という理由でツールを選んでいたようだ。[l][r]
_　なんとか力技で自動テストの実装を続けたが、実装工数が膨らみ、プロジェクトの工数を圧迫してしまった。[l][r]
_　結果として、バージョンアップ版のテストまでに自動化は完了せず、テストチームが手動で対応せざるを得なくなった。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　テストチームは連日の残業で疲弊し、多くの不具合を見逃したままバージョンアップ版がリリースされていくこととなった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC

@jump storage="scene_01_03.ks" target="*start"
[s]
