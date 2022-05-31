;プロジェクトマネージャ編5

*goToTitle
@jump storage="title.ks"


*start

*choice
@chara_mod name="main" face="default"
[cm]

_　そしてある日……私は部長に呼び出された。[l][r]
_　“お褒めのことば”でもくれるのだろうか。[l][r]
_　どうせくれるなら、臨時ボーナスでも貰いたいところだ。[l][r]
[r]
@chara_show name="manager"
「テスト自動化の導入を無事行うことができたようだな。[l][r]
_　テストカバレッジも増えたし、これでつまらんデグレが防げるだろう。よくやってくれた。[l][r]
_　ところでテストチームについてだが、自動化できたわけだし、縮小してもかまわないな？　テストリーダーの彼も、別の業務にアサインしたいと思っていてね」[l][r]
[r]
@chara_hide name="manager"
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）そうですね、これで人件費も削減でき、ハッピーです。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）自動テストがある限り、保守運用は続きます。専任担当者は継続して必要です。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）そうですね、これで人件費も削減でき、ハッピーです。[resetfont][l][r]
[r]
@chara_show name="manager"
_　部長が言うことはわかる。[l][r]
_　確かに、自動化したのであればテストに割く人員は減らしても問題はないはずだ。[l][r]
_　テストリーダーは今回良い働きをしてくれたし、彼には別の新しい仕事が振られるだろう。[l][r]
[r]
_　これでみんなハッピーエンドだ。[l][r]
@chara_hide name="manager"

[cm]

_　ところがこの考えが間違いだった。[l][r]
[r]
_　テストリーダーが自動化担当を離れてしばらくして、軽微な仕様変更や機能追加、バグの改修などのタイミングで自動テストが動かないことが増えてきた。[l][r]
_　その都度メンテナンスを試みたものの、誰もメンテナンスができない。[l][r]
[r]
@chara_mod name="main" face="down"
_　そして苦労して作った自動テストは使われなくなり、以降リリースのたびにデグレが発生する状況になってしまった。[l][r]

[cm]

[font color="0xff0000" bold=true]BAD END[resetfont][l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*choice"]選択肢へ戻る[endlink][resetfont][r]
[font color="0xffd700"][link target="*goToTitle"]タイトルへ戻る[endlink][resetfont]
[endnowait]
[s]

*selectB
[cm]

[font color="0xffd700"]Ｂ）自動テストがある限り、保守運用は続きます。専任担当者は継続して必要です。[resetfont][l][r]
[r]
@chara_show name="manager"
_　私は部長に、テスト自動化は「ここまでやれば終わり」がなく、作った自動テストは継続的に保守運用が必要であることを説明した。[l][r]
[r]
「そうか、君がそう言うならわかったよ……」[l][r]
[r]
_　部長は完全に納得したわけではなさそうだったが、一応聞き入れてくれたようだ。[l][r]
_　これからも、自動テストをうまく使って、開発を進めていこう。[l][r]

[cm]

@eval exp="sf.end02=true"
[font color="0xffd700" bold=true]HAPPY END[resetfont][l][r]
[r]
[nowait][font color="0xffd700"][link target="*goToTitle"]タイトルへ戻る[endlink][resetfont][endnowait]
[s]
