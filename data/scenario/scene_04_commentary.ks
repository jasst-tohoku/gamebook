;開発者編解説

*start

[cm]

*choice1
[cm]
[nowait]
@chara_show name="main"

_　わたしがこれまで経験した開発では、あらかじめシステムを機能に分割しておいて、開発者ごとに複数の担当機能を割り当てていたんだっけ。[r]
_　「テストファースト」っていう考え方だと、機能を実装するときに単体テストを用意するのは……[r]
[r]
[font color="0xffd700"]Ａ）機能を実装開始する前だ。あらかじめ単体テスト内容が明確なら、実装も迷わない。[resetfont][r]
[font color="0xffd700"]Ｂ）一つの機能実装が終わった後だ。機能ができたら、すぐにその機能をテストしよう。[resetfont][r]
[font color="0xffd700"]Ｃ）担当者のすべての機能実装が終わった後だ。他者との結合の前に、作った機能をテストしよう。[resetfont][r]
[endnowait]
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer1"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice2"
[s]


*answer1
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
テストファーストはテスト対象のコードを書く前にテストコードを用意する手法です。[r]
実装する前にテストを用意することで、これから行う実装がどこまでやれば完成かを明確にすることができます。[r]
実装してからテストを書くと、その実装でうまくいくようなテストを書いてしまいます。実装が不完全であることを示すような、失敗するテストを開発者自身で作ることは心理的に困難なことが多いです。[r]
（参考：書籍「テスト駆動開発」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice1"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice2
[cm]
[nowait]
@chara_show name="main"

_　開発プロセス上は、実装前に基本設計するフェーズがあるけど、毎回レビューでの指摘が多くって、いまだに設計が上手くできる自信がないんだよね。[r]
_　リファクタリングで設計を向上できるテスト駆動開発だったら、もしかして、開発プロセスでの設計の役割が変えられるかもしれない？[r]
[r]
[font color="0xffd700"]Ａ）コードレベルの設計向上が図れるだけで、全部じゃない。これまでどおり、基本設計を行おう。[resetfont][r]
[font color="0xffd700"]Ｂ）事前に設計するよりも、学習しながら設計したほうが良いものになる。基本設計は行わずに、テスト駆動開発で設計品質を担保しよう。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice1"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer2"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice3"
[s]


*answer2
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
テスト駆動開発（TDD）は「設計判断と（テストの）フィードバックの間にあるギャップを認識することであり、そのギャップをコントロールする技法」です。[r]
[r]
テスト駆動だけでは解決ができない問題としてセキュリティや並行性が知られており、事前の設計は十分に検討することが望ましいと考えられます。[r]
（引用：書籍「テスト駆動開発」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice2"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice3
[cm]
[nowait]
@chara_show name="main"

_　さて、借りてきた書籍もひととおり目を通したし、単体テストの完了条件を決めよう。[r]
_　ブラックボックステスト技法は実装内部に着目せず、入出力が仕様に合うかに着目したものだ。対して、ホワイトボックステスト技法は実装内部に着目したものだ。[r]
_　単体テストでのテスト技法は……[r]
[r]
[font color="0xffd700"]Ａ）必要ない。テスト技法はシステムテストのように製品の最終品質を保つときに使うもので、開発者レベルのテストに入れるには重たい。[resetfont][r]
[font color="0xffd700"]Ｂ）ホワイトボックステスト技法を使って、ブラックボックステスト技法を使わない。システムテストでは実装内部には着目しないので、開発者のテストではシステム内部に着目したテストを優先する。[resetfont][r]
[font color="0xffd700"]Ｃ）ホワイトボックステスト技法もブラックボックステスト技法も両方使う。開発者も処理が仕様に合うかを着目することが重要だ。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice2"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer3"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice4"
[s]


*answer3
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
ホワイトボックスのテスト技法ではロジックの確かさを確認することができます。また、ブラックボックスのテスト技法では機能単位の動作を確認することができます。[r]
コードを網羅して確認するホワイトボックスのテストはテスト担当者よりも開発者が確認するべきテストだといえます。[r]
機能単位の動作を確認するブラックボックスのテストはテスト担当者が実行します。しかし、その機能を実装する開発者が確認できると、不具合の検出が早期にできる可能性が高まります。[r]
（参考：書籍「ソフトウェア品質を高める開発者テスト アジャイル時代の実践的・効率的なテストのやり方」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice3"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice4
[cm]
[nowait]
@chara_show name="main"

「コードレビューって今回はどうしますか？」[r]
[r]
_　あぁ。これまでも実装したコードはチームの誰かにレビューして貰うルールだった。[r]
_　これまでは単体テストは開発者に任されていたから、コードレビューもロジックが正しいかどうかの指摘が多かったんだっけ。[r]
_　今回は……[r]
[r]
[font color="0xffd700"]Ａ）単体テストで品質が担保できるからコードレビューは実施しない。[resetfont][r]
[font color="0xffd700"]Ｂ）実装後の単体テストが成功してから、コードレビューを実施しよう。[resetfont][r]
[font color="0xffd700"]Ｃ）実装後の単体テスト成否に関わらず、コードレビューを実施しよう。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice3"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer4"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice5"
[s]


*answer4
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
自動化した単体テストで検出できるバグに対応しておくことで、レビューを本来必要な指摘に集中できるようになります。[r]
また、以下のような問題を単体テストで検出することは困難です。それらはレビューなどで確認しましょう。[r]
・並行性に関するもの（レース状態など）[r]
・セキュリティに関するもの[r]
・変数名やクラス名、コメントなどの可読性に関するもの[r]
あらかじめ機械で判断できるところは機械に任せて、それ以外のところに人が集中できるようにしましょう。[r]
（参考：書籍「ソフトウェア品質を高める開発者テスト アジャイル時代の実践的・効率的なテストのやり方」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice4"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice5
@chara_show name="main"
[cm]
[nowait]
_　実装時の好きなタイミングで単体テストを実行できるようにしているし、構成管理リポジトリへの反映は単体テストが成功したときにのみできるようにしている。実行頻度は高いので時間が長いのは厳しいが……。[r]
「このテストで不具合を見つけているから、消したくないんですよね」[r]
_　この時間のかかるテストは実際に不具合を見つけた実績がある。処理改修時のことを考えると、ただ消すだけはやりたくない。[r]
[r]
[font color="0xffd700"]Ａ）時間はかかるけど、これまでどおり単体テストを実行しよう。[resetfont][r]
[font color="0xffd700"]Ｂ）時間がかかるテストは分けて扱おう。時間が短いテストはこれまでどおり実行し、時間がかかるテストは構成管理リポジトリへの反映時のみに実行できるようにしよう。[resetfont][r]
[font color="0xffd700"]Ｃ）これまでの単体テスト実行は取り止めて、QAへの受け渡し直前に実行するようにしよう。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice4"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer5"
[s]


*answer5
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
開発者が自動化された単体テストを扱う場合、コンパイル、実行してすぐに結果を知りたいと思います。そのため、開発者全員が使用する自動化された単体テストは短い時間で実行できることが望ましいです。[r]
処理時間が大きいテストは単体テストとは別に管理して例えば構成管理リポジトリの更新時に実行することで、頻度は落としながらも早期に不具合を検出できると良いでしょう。[r]
（引用：書籍「テストから見えてくるグーグルのソフトウェア開発」）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice5"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*commentary
@jump storage="commentary.ks"
[s]
