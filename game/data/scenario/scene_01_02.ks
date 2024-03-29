;プロジェクトマネージャ編2


*start

[cm]

[font color="0xffd700"]Ａ）システムテスト自動化に関する専門的なスキルを持った担当者をアサインして進めよう。[resetfont][lr]
[r]
_　まわりに話を聞いてみると、最近転職してきたテストリーダーは前職のWeb開発企業で、複数のプロジェクトでテスト自動化を行ってきたらしい。[lr]
_　彼が担当者として適任だ、彼を任命しよう。[lr]
_　話をしたところ、テストリーダーもやる気になってくれた。[lr]
_　ひとまず任せて、様子を見ることにしよう。[lr]

[cm]

_　あるときテストリーダーが話しかけてきた。[lr]
[r]
@chara_show name="leader"
@playse storage="voice/scene_01_02/leader-01-02-01.ogg"
「PMさん、ちょっといいですか？　実は部長が……」[lr]
[r]
_　テストリーダーが言うには、部長から、[lr]
[r]
@playse storage="voice/scene_01_02/manager-01-02-01.ogg"
「懇意にしている会社のテスト自動化ツールを安く提供してもらえるので、これを使うように」[lr]
[r]
と指示があったらしい。[lr]
_　プロジェクトを任されている自分に断りもなく、勝手な人だ。[lr]
_　テストリーダーは、過去に使用経験があるツールを使おうと検討を開始していたらしく、事情も知らない部長から突然横槍を入れられて面白くなかったらしい。[lr]

[cm]

@playse storage="voice/scene_01_02/leader-01-02-02.ogg"
「何度もこのツールで上手くやってきましたし、私には経験があります。 [l][playse storage="voice/scene_01_02/leader-01-02-03.ogg"]今回のプロジェクトでも間違いなく適用できますよ。[lr]
@playse storage="voice/scene_01_02/leader-01-02-04.ogg"
_　PMさんからも部長に言ってやってくださいよ」[lr]

[cm]

_　だんだんヒートアップしてきたテストリーダーを落ち着かせつつ、ひとつ気になる点が出てきた。[lr]
_　そのテストリーダーの経験があるツールとやらは、今回のプロジェクトで本当に使えるんだろうか？[lr]
_　経緯はさておき、部長が指示してきたツールのほうがたまたま優れていた、ということもあるかもしれない。[lr]
_　私はテストリーダーに、今回のプロジェクトでその「経験があるツール」の適用検討は行ったのか、聞いてみた。[lr]
[r]
@playse storage="voice/scene_01_02/leader-01-02-05.ogg"
「それはまだですが、私が慣れてますから。間違いありませんよ」[lr]
[r]
_　ずいぶん自信がありそうだな……。[lr]

*choice
[cm]
@restore
@chara_show name="leader"

_　面倒なことになったが、ここはマネージャとしてビシッと決めねば。[lr]
[r]
@chara_hide name="leader"
_　どちらのツールを採用しようか。[lr]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）安価に使えるツールであれば導入もしやすいはず。部長からの指示があったツールを導入しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）担当であるエンジニアが一番よく理解しているはず。部長には断りを入れて、テストリーダーが選んだツールを導入しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）どちらも机上で検討をしているだけで、実際に試してみていない。両方のツールを、まずはトライアル（パイロット）として一定期間試用してから判断だ。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）安価に使えるツールであれば導入もしやすいはず。部長からの指示があったツールを導入しよう。[resetfont][lr]
[r]
_　安価に使えるということだったし、何より部長の指示だ。[lr]
_　なにかあったら部長も責任をとってくれるだろう。[lr]

[cm]

@fadeoutbgm
_　ところがその予想は外れることになる。[lr]
[r]
_　既存のリグレッションテストケースをツールで自動化していたが、安価な反面機能が不足していることがわかった。[lr]
_　細かい部分は自動テストスクリプトを書く必要があり、限られた人しか自動化できない状態になったのだ。[lr]
_　結果として、バージョンアップ版のテストまでに自動化は完了せず、テストチームが手動で対応せざるを得なくなった。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　テストチームは連日の残業で疲弊し、多くの不具合を見逃したままバージョンアップ版がリリースされていくこととなった。[lr]

@badend storage="scene_01_02.ks"


*selectB
[cm]

[font color="0xffd700"]Ｂ）担当であるエンジニアが一番よく理解しているはず。部長には断りを入れて、テストリーダーが選んだツールを導入しよう。[resetfont][lr]
[r]
_　部長は素人だ、ここは前職で経験があるテストリーダーの意見を聞くべきだろう。[lr]
_　上の意見をつっぱねる姿勢を部下に見せておいたほうがPMとしての威厳も出そうだし。[lr]
[r]
_　私は部長には断りを入れ、テストリーダーが検討しているツールを使用するよう指示した。[lr]

[cm]

@fadeoutbgm
_　ところがその予想は外れることになる。[lr]
[r]
_　テストリーダーは対象プロダクトの仕様をよく把握せずに、「使い慣れているから」という理由でツールを選んでいたようだ。[lr]
_　なんとか力技で自動テストの実装を続けたが、実装工数が膨らみ、プロジェクトの工数を圧迫してしまった。[lr]
_　結果として、バージョンアップ版のテストまでに自動化は完了せず、テストチームが手動で対応せざるを得なくなった。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　テストチームは連日の残業で疲弊し、多くの不具合を見逃したままバージョンアップ版がリリースされていくこととなった。[lr]

@badend storage="scene_01_02.ks"


*selectC

@jump storage="scene_01_03.ks" target="*start"
[s]
