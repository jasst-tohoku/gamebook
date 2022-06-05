;組込開発者編解説

*start


;表を右部に表示するとき用のメッセージレイヤ
@position layer="message1" page="fore" left=90 top=5 width=770 height=710 visible=false
@position layer="message1" page="fore" margint=10 marginl=50 marginr=70 marginb=30

;右部に表示する表のレイヤ
@image layer=1 storage="tdd_cycle.jpg" visible=false top=5 left=860

[cm]

*choice1
[cm]
@switchlayer0
[nowait]
@chara_show name="main"

_　自動化の以前にどうテストしていこう？[r]
[r]
[font color="0xffd700"]Ａ）計画初期にテストしても、どうせ本番環境でも似たテストをしなければならない。開発環境や評価環境ではテストはせず、本番機が来てから一気にテストを行う。[resetfont][r]
[font color="0xffd700"]Ｂ）アーキテクチャが異なる開発環境でテストしても意味がない。開発環境ではテストをしないで、評価環境でのみテストを行う。[resetfont][r]
[font color="0xffd700"]Ｃ）使えるものは何でも使う。開発環境でも評価環境でもテストを行う。[resetfont][r]
[endnowait]
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer1"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice2"
[s]


*answer1
[cm]

@chara_hide_all
@switchlayer1
[nowait]
＜解説＞[r]
デュアルターゲット開発には以下のリスクがあります。[r]
コンパイラがサポートしている言語機能が異なっている[r]
ランタイムライブラリが異なっている[r]
インクルードファイルの名前や機能が異なっている[r]
評価機があるときは組み込みTDDサイクル（右図）のステージ１～３を回すことでリスクを抑えて開発できます。[r]
（参考：書籍「テスト駆動開発による組み込みプログラミング」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice1"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice2
[cm]
@switchlayer0
[nowait]
@chara_show name="main"

_　テストを自動化するにあたって、テストケースを設計し、テスト実行環境を用意し、テストコードを書いていく。[r]
_　しかし、開発環境と評価環境が違うんだ。テストケースやテスト実行環境、テストコードにも環境の違いが出てくるはずだ。最初は共通のものでいいと思っていたけど、環境ごとに分けなければいけないところもあるはずだ。[r]
_　テスト資産はどうやって扱おうか。[r]
[r]
[font color="0xffd700"]Ａ）テスト資産はできる限り共通化したほうが良い。共通化できないところは分けるが、開発環境と評価環境で可能な限りテスト資産の共通化をすすめる。[resetfont][r]
[font color="0xffd700"]Ｂ）テスト資産を分けて管理したほうが良い。実行するときは別々に実行するので、テスト資産の共通化は行わずに開発環境と評価環境で別々にテスト資産を用意する。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice1"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer2"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice3"
[s]


*answer2
[cm]
@chara_hide_all
@switchlayer0
[nowait]
＜解説＞[r]
デュアルターゲットとは、最初からコードを少なくとも2つのプラットフォーム、最終ターゲットとホストシステム、で動くように設計することを意味しています。[r]
デュアルターゲットによりハードウェアの準備ができる前にコードをテストできるようになり、開発サイクルによるハードウェアにまつわるボトルネックを避けることができます。[r]
また、ソフトウェアとハードウェアの境界に注目することで、よりモジュール化した（ハードウェアに依存しない）設計ができます。[r]
デュアルターゲットを意識することで移植性の高いテスト資産を用意できます。[r]
（参考：書籍「テスト駆動開発による組み込みプログラミング」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice2"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice3
[cm]
@switchlayer0
[nowait]
@chara_show name="main"

_　どうやってテストの自動化を進めようか。[r]
[r]
[font color="0xffd700"]Ａ）機能がないものはテストできず、余計な開発工数は使えない。評価機で実行できない部分は試作機がきてから開発する。[resetfont][r]
[font color="0xffd700"]Ｂ）インターフェースの仕様が分かれば開発できる。機能が無い部分は、インターフェース部で入力に対して決まった答えを返すダミー処理を作成して、それを使ってテストする。[resetfont][r]
[font color="0xffd700"]Ｃ）機能が無いなら同等なものを用意すればいい。仕様を忠実に模したシミュレーターを作成して、それを使ってテストする。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice2"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer3"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice4"
[s]


*answer3
[cm]
@switchlayer0
@chara_hide_all
[nowait]
＜解説＞[r]
テストダブルはテスト対象が依存しているコンポーネントを置き換える代替品のことです。テストダブルのひとつであるモックオブジェクトが単体テストフレームワークでもサポートされることが多くて有名です。[r]
テストダブルによって、以下の利点が挙げられます。[r]
・ハードウェアからの独立[r]
・生成するのが難しい入力を注入する[r]
・時間のかかるコラボレータを高速化する[r]
・変動するものへの依存[r]
・開発中のものへの依存[r]
・設定困難なものへの依存[r]
（参考：書籍「テスト駆動開発による組み込みプログラミング」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice3"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice4
[cm]
@switchlayer0
[nowait]
@chara_show name="main"

_　開発環境や評価環境での従来の自動テスト資産は十分にある。[r]
_　これらをどうやって活かそうか。[r]
[r]
[font color="0xffd700"]Ａ）本番に近い環境でテストしたほうが良い。今後は試作機テストに注力して、従来のテストは行わずに工数を削減する。[resetfont][r]
[font color="0xffd700"]Ｂ）これまでのテスト資産も活用しよう。従来のテストを行いつつ、試作機テストも適度に実行する。[resetfont][r]
[font color="0xffd700"]Ｃ）これまで上手くやってきた方法を変える必要はない。従来通りのテストを行い、試作機テストを行わない。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice3"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer4"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice5"
[s]

*answer4
[cm]
@switchlayer1
@chara_hide_all
[nowait]
＜解説＞[r]
ターゲットハードウェアでのテストは組込TDDサイクル（右図）のステージ4、５に該当します。[r]
ターゲットハードウェアが揃った後でも、ステージ１～３も無駄になりません。[r]
開発環境でのテストも組込ではないTDDのように開発のリズムを維持したり、デグレードを防いだりするのに有用です。テストは積み上げて品質を担保することが鉄則です。[r]
（参考：書籍「テスト駆動開発による組み込みプログラミング」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice4"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice5
[cm]
@switchlayer0
[nowait]
@chara_show name="main"

_　あとは、評価環境では無い機能に対して作ったモックオブジェクトをどうするかだ。[r]
_　実装ではモックオブジェクトは本来必要な機能を実装したものに置き換えるのだが……[r]
[r]
[font color="0xffd700"]Ａ）本番環境で動くプログラムを動作確認できればいい。試作機ではモックオブジェクトを使った自動テストを行わず、試作機実装を用いたテストを行う。[resetfont][r]
[font color="0xffd700"]Ｂ）モックオブジェクトを使ったテストで動作を確認できれば品質は保証できる。試作機ではモックオブジェクトを用いた自動テストを行い、試作機実装を用いたテストを行わない。[resetfont][r]
[font color="0xffd700"]Ｃ）これまでのテスト資産も活用しよう。試作機ではモックオブジェクトを用いた自動テストも、試作機実装を用いたテストも両方行う。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice4"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer5"
[s]

*answer5
[cm]
@switchlayer1
@chara_hide_all
[nowait]
＜解説＞[r]
組込TDDサイクル（右図）のステージ４ではモックオブジェクトを試作機向けの実装に用意する必要はありますが、モックオブジェクトのテストも開発に役に立ちます。[r]
ハードウェア固有のテストを実施する前に、ハードウェアに依存しないテストを行うことで、問題の切り分けが容易になります。[r]
（参考：書籍「テスト駆動開発による組み込みプログラミング」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice5"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*commentary
@jump storage="commentary.ks"
[s]
