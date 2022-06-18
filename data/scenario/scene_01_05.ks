;プロジェクトマネージャ編5


*start

*choice
[cm]
@restore

_　そしてある日……私は部長に呼び出された。[lr]
_　“お褒めのことば”でもくれるのだろうか。[lr]
_　どうせくれるなら、臨時ボーナスでも貰いたいところだ。[lr]
[r]
@chara_show name="manager"
@playse storage="voice/scene_01_05/manager-01-05-01.ogg"
「テスト自動化の導入を無事行うことができたようだな。[lr]
@playse storage="voice/scene_01_05/manager-01-05-02.ogg"
_　テストカバレッジも増えたし、これでつまらんデグレが防げるだろう。よくやってくれた。[lr]
@playse storage="voice/scene_01_05/manager-01-05-03.ogg"
_　ところでテストチームについてだが、自動化できたわけだし、縮小してもかまわないな？　[l][playse storage="voice/scene_01_05/manager-01-05-04.ogg"]テストリーダーの彼も、別の業務にアサインしたいと思っていてね」[lr]
[r]
@chara_hide name="manager"
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）そうですね、これで人件費も削減でき、ハッピーです。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）自動テストがある限り、保守運用は続きます。専任担当者は継続して必要です。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）そうですね、これで人件費も削減でき、ハッピーです。[resetfont][lr]
[r]
@chara_show name="manager"
_　部長が言うことはわかる。[lr]
_　確かに、自動化したのであればテストに割く人員は減らしても問題はないはずだ。[lr]
_　テストリーダーは今回良い働きをしてくれたし、彼には別の新しい仕事が振られるだろう。[lr]
[r]
_　これでみんなハッピーエンドだ。[lr]
@chara_hide name="manager"

[cm]

@fadeoutbgm
_　ところがこの考えが間違いだった。[lr]
[r]
_　テストリーダーが自動化担当を離れてしばらくして、軽微な仕様変更や機能追加、バグの改修などのタイミングで自動テストが動かないことが増えてきた。[lr]
_　その都度メンテナンスを試みたものの、誰もメンテナンスができない。[lr]
[r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
_　そして苦労して作った自動テストは使われなくなり、以降リリースのたびにデグレが発生する状況になってしまった。[lr]

@badend storage="scene_01_05.ks"

*selectB
[cm]

[font color="0xffd700"]Ｂ）自動テストがある限り、保守運用は続きます。専任担当者は継続して必要です。[resetfont][lr]
[r]
@chara_show name="manager"
_　私は部長に、テスト自動化は「ここまでやれば終わり」がなく、作った自動テストは継続的に保守運用が必要であることを説明した。[lr]
[r]
@playse storage="voice/scene_01_05/manager-01-05-05.ogg"
「そうか、君がそう言うならわかったよ……」[lr]
[r]
@fadeoutbgm
@fadeinbgm storage="happy_end.ogg" time=1000
_　部長は完全に納得したわけではなさそうだったが、一応聞き入れてくれたようだ。[lr]
_　これからも、自動テストをうまく使って、開発を進めていこう。[lr]

@eval exp="sf.end01=true"
[happyend]
