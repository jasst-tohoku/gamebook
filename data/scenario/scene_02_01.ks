;組込開発者編1


*goToTitle
@jump storage=title.ks


*start
@chara_hide_all

[cm]

@chara_show name="main"
[font color="0xffd700"]Ｂ）組み込み開発の自動テストに取り掛かろうとしている。[resetfont][l][r]
[r]
_　わたしはIoTセンサデバイス開発プロジェクトにアサインされた。[l][r]
_　センサデバイスは新規にハードウェアを開発するようだ。[l][r]
_　わたしはセンサ周りのソフトウェア開発を担当する５人のチームに所属することになった。[l][r]
[r]
_　先日行われたキックオフミーティングで計画を説明された。[l][r]

[cm]

@image layer=1 storage=table_02_01.png visible=true top=480 left=95

_　ハードウェアとソフトウェアは並列で開発するようだ。[l][r]
_　試作機はPRJ後期、本番機はPRJ終盤の完成になるようで、それまでは試作機や本番機と同じCPUアーキテクチャの評価機が用意されるそうだ。[l][r]
_　ただし、数が少なく評価機、試作機、本番機はわたしたちのチームには１台しか支給されないことになっている。[l][r]


[cm]

_　開発者のPCには開発環境が入っているが、本番環境や評価環境とはアーキテクチャが異なるため、開発したものを本番環境や評価環境で動作させるためにはクロスコンパイルする必要がある。[l][r]
_　計画初期はわたしたちのチームは余裕がありそうだが、後期の試作機や本番機が揃ったあたりからは計画がタイトとなっている。[l][r]
_　後期以降は試作機や本番機のテストや改修作業に効率が求められそうだ。[l][r]

[cm]

@layopt layer=1 visible=false

_　キックオフミーティングの後に部長に相談するとこう言われた。[l][r]
[r]
@chara_show name="manager"
「きみがテストを自動化すればPRJ後期もうまく行くんじゃない？」[l][r]
[r]
_　……はぁ！？[l][r]
_　これまで業務でテストの自動化をやったことがない。[l][r]
_　他の部署でもやっているという話は知らない。[l][r]
_　というのに、わたしにやれというのか。[l][r]
_　いきなり何を言っているんだ。[l][r]

[cm]

_　……そういえば、このまえの1on1で、最近ソフトウェアテストに興味があって自動テストの勉強をしていることを話していたんだった。[l][r]
[r]
「PRJ初期は余裕があるから試してみればいいよ。QA部門はPRJ後期から関わるって言ってるから、それまでは考えるつもりはないみたいだ。[l][r]
_　PRJ後期の残業まみれを避けられればいいよ」[l][r]
[r]
_　……好き勝手なことを言ってくるなぁ。[l][r]
_　とはいえ、試す機会ができたことはラッキーだ。せっかくだしいろいろやってみよう。[l][r]
_　もしどこかに迷惑がかかったとしても、部長に言われたからやりました、とでも言い訳すればいい。[l][r]
_　じゃあ、テスト自動化の方針を考えてみようか。[l][r]
@chara_hide name="manager"
[cm]

@layopt layer=1 visible=true

_　とはいえ、計画初期は開発環境と評価環境というアーキテクチャの異なる環境で進めていく必要がある。[l][r]
[r]
_　開発環境は５人の開発者ごとに用意されている開発PCがそうだ。[l][r]
_　評価環境は１台しかない評価機のことであり、評価環境で動くバイナリは開発環境のクロスコンパイラでつくる必要がある。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true

_　自動化の以前にどうテストしていこう？[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）計画初期にテストしても、どうせ本番環境でも似たテストをしなければならない。開発環境や評価環境ではテストはせず、本番機が来てから一気にテストを行う。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）アーキテクチャが異なる開発環境でテストしても意味がない。開発環境ではテストをしないで、評価環境でのみテストを行う。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）使えるものは何でも使う。開発環境でも評価環境でもテストを行う。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
@layopt layer=1 visible=false
[cm]

[font color="0xffd700"]Ａ）計画初期にテストしても、どうせ本番環境でも似たテストをしなければならない。開発環境や評価環境ではテストはせず、本番機が来てから一気にテストを行う。[resetfont][l][r]
[r]
_　そうだ。開発環境や評価環境でテストしたとしても、本番環境で再度テストしなければならない。[l][r]
_　それならば、開発環境や評価環境でテストをするよりも、実装に多くの時間を割いた方がいいだろう。[l][r]
[r]
_　…………[l][r]

[cm]

「それで、今出ている不具合はどのくらいで修正できそうなの？」[l][r]
[r]
@chara_show name="manager"
_　部長から聞かれているが、わたしはとても答えられなかった。[l][r]
_　本番機が来てからテストを始めたが、不具合ばかりだった。不具合が多すぎて、まともにテストが実行しきれなかったくらいだ。[l][r]
_　不具合もいろいろな要因が絡んでいて、修正が困難なものが多い。[l][r]
_　テストも終わらず、不具合修正の目途もまったく立っていない。[l][r]
[r]
_　部長は関係部門と今後の対応会議を頻繁にしており、今もチームの状況を確認のために来ている。[l][r]
_　わたしの答えになっていない回答を聞いて頭を抱えている。[l][r]
@chara_hide name="manager"

[cm]

_　リリースは延期する方向で進めているらしい。[l][r]
_　わたしたちの担当範囲も別チームで作り直す方向で進めるらしい。[l][r]
@chara_mod name="main" face="orz"
_　部長からは会社の責任であり、個人で抱え込まないように言われたが、プロジェクト開始時にあったわたしの自信は今はもう無くなってしまった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
@layopt layer=1 visible=false
[cm]

[font color="0xffd700"]Ｂ）アーキテクチャが異なる開発環境でテストしても意味がない。開発環境ではテストをしないで、評価環境でのみテストを行う。[resetfont][l][r]
[r]
_　開発環境よりも評価環境の方が本番環境に近い。[l][r]
_　テストは評価環境で進めるようにした方がいいだろう。[l][r]
_　チームは５人に対して評価機は1台だから、誰かを評価機のテスト専任にして、他のメンバーで開発をガンガン進めてもらうといいかもしれない。[l][r]
[r]
_　よし、この方針で進めてみよう。[l][r]
[r]
_　…………[l][r]

[cm]

「みなさんが何を根拠に『機能を実装した』としているのか、教えてくださいよ！」[l][r]
[r]
@chara_show name="leader"
_　PRJ中期の実装期間も終わりに近づいてきた開発室に怒声が響く。[l][r]
_　評価環境でテストを担当している彼が声の主のようだ。[l][r]
[r]
_　話を聞くと、評価環境でのテストで不具合が頻発しているらしい。[l][r]
_　不具合を見つけるのが彼の仕事だから仕方がない気もするが、どうにも単純ではないらしい。[l][r]

[cm]

「単純なロジックミスでの不具合が結構多いんですよ。[l][r]
_　それだけならいいんですが、そういったミスが残っている状態でみんなは次の機能実装も進めてるんです。そんな状態だから、不具合を直してもデグレが頻発してて困ってるんです。[l][r]
_　今日もデグレについて何度説明しに行ったか……」[l][r]
[r]
@chara_hide name="leader"
@chara_mod name="main" face="orz"
_　テストは１人、実装が４人の体制で進めている。彼がテストするよりも実装が先行することを想定してはいた。[l][r]
_　これまでは実装は計画どおりに進んでいたが、最近は不具合の対応で予定していた機能実装が進んでいない、という話も増えてきた。[l][r]
_　テストを並列実行しているから実装完了後の不具合修正期間は短めに見ていたが、見通しが甘かったかもしれないなぁ……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC
@layopt layer=1 visible=false
@jump storage=scene_02_02.ks target=*start
[s]
