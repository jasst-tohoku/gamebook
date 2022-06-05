;開発者編3

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ａ）コードレベルの設計向上が図れるだけで、全部じゃない。これまでどおり、基本設計を行おう。[resetfont][l][r]
[r]
_　これまでの設計レビューで指摘されたところでも、機能を跨ぐ処理のことだったり、データ競合が起きそうなところの指摘なんかは、テスト駆動開発だけでは設計向上が難しそうに思う。[l][r]
_　それに、QA部門がシステムテストを設計するために設計書も欲しいって言っていたから、「実装が終わるまで設計書はできません」なんて言ったら「テスト設計ができません」って言われそうだ。[l][r]
_　よし、設計フェーズまでは従来どおりに実施して、実装フェーズをテスト駆動開発でやってみよう。チームメンバーにも説明して意見を聞いてみよう。[l][r]
_　…………[l][r]

[cm]

@chara_show name="leader"
_　チームメンバーを集めて、今回のプロジェクトではテスト駆動開発の導入を試したいこと、QA部門にシステムテストを依頼する前にチームで品質を高めたいことを共有した。[l][r]
_　他のメンバーもテスト駆動開発は聞いたことがあるらしく、試すことに好意的だったのが助かる。[l][r]
_　不具合が早めに検出できることで、不具合改修の時間が短くなって全体の工数が短くなる、なんて意見も出た。結構みんな考えてくれているんだ、って安心した。[l][r]

[cm]

_　ついでに集まって、テスト駆動開発の単体テストの書き方を確認した。Webの情報でひととおりテストが自動で実行できるところまでみんなで確認できたので、これでやってみようってなった。[l][r]
[r]
@playse storage="voice/scene_04_03/leader-04-03-01.ogg"
「そういえば、気になったんですけど……」[l][r]

[cm]

@playse storage="voice/scene_04_03/leader-04-03-02.ogg"
「今回行う単体テストって、どこまでやれば完了にしますか」[l][r]
[r]
_　単体テストの完了基準か。これまではあまりしっかりやっていなかったから、特に考えてこなかったなぁ。[l][r]
[r]
@playse storage="voice/scene_04_03/leader-04-03-03.ogg"
「実際にできるかは別ですけど、理想としては一連の入出力パターンを網羅して確認するって感じでしょうか」[l][r]
[r]
_　うーん、わからん。[l][r]
_　あとでQA部門の同期に話を聞いてみよう。[l][r]
@chara_hide name="leader"

[cm]

@chara_show name="qa"
@playse storage="voice/scene_04_03/qa-04-03-01.ogg"
「わたしもシステムテストばかりだから、単体テストでも同じ考え方かはわからないけど……」[l][r]
[r]
_　と、早速聞きにきたら、釘を刺された。[l][r]
[r]
@playse storage="voice/scene_04_03/qa-04-03-02.ogg"
「わたしたちはテスト設計のときにいくつかのテスト技法を使っているよ。[l][r]
@playse storage="voice/scene_04_03/qa-04-03-03.ogg"
_　不具合を見つけやすいテストケースを抽出して、テストケースを減らすためにテスト技法を使うんだよね。[l][playse storage="voice/scene_04_03/qa-04-03-04.ogg"]理想は入出力の総当たりだけど、それだと工数がいくらあっても足らないから」[l][r]
[r]
_　なるほど。単体テストでもテスト技法を使った方が良いのは変わらなそうだ。[l][r]

[cm]

@playse storage="voice/scene_04_03/qa-04-03-05.ogg"
「システムテストでよく使うのは境界値分析とか同値分割みたいなブラックボックステスト技法かな。[l][r]
@playse storage="voice/scene_04_03/qa-04-03-06.ogg"
_　処理の制御が見えないものとして、入出力がどういう仕様であればいいか、でテストケースを考えるの」[l][r]
[r]
_　QA部門は設計書は見ても、実装の中身までは見ないからね。[l][r]
[r]
@playse storage="voice/scene_04_03/qa-04-03-07.ogg"
「あとは、システムテストではあまり使わないけど、制御フローに着目するホワイトボックステスト技法もあるよ。[l][r]
@playse storage="voice/scene_04_03/qa-04-03-08.ogg"
_　条件網羅とか、分岐網羅とかがキーワードかな。コードカバレッジとったりとかもあるはず」[l][r]
[r]
_　こんなに教えてくれるなんて、この人は先生かな？　テスト技法の書籍も貸してくれたので、あとでスイーツを差し入れよう。[l][r]
@chara_hide name="qa"

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　さて、借りてきた書籍もひととおり目を通したし、単体テストの完了条件を決めよう。[l][r]
_　ブラックボックステスト技法は実装内部に着目せず、入出力が仕様に合うかに着目したものだ。対して、ホワイトボックステスト技法は実装内部に着目したものだ。[l][r]
_　単体テストでのテスト技法は……[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）必要ない。テスト技法はシステムテストのように製品の最終品質を保つときに使うもので、開発者レベルのテストに入れるには重たい。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）ホワイトボックステスト技法を使って、ブラックボックステスト技法を使わない。システムテストでは実装内部には着目しないので、開発者のテストではシステム内部に着目したテストを優先する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）ホワイトボックステスト技法もブラックボックステスト技法も両方使う。開発者も処理が仕様に合うかを着目することが重要だ。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）必要ない。テスト技法はシステムテストのように製品の最終品質を保つときに使うもので、開発者レベルのテストに入れるには重たい。[resetfont][l][r]
[r]
_　わたしたちは開発者であって、テスト技法のようなテスト技術者が学ぶような技法は必要ないだろう。そんなに覚えることがいっぱいあってはわたしたちの頭もパンクしてしまう。[l][r]
[r]
_　単体テストはひととおり仕様通りの実装が覆えていれば十分だろう。テスト技法を使ったテストはQA部門がやってくれる。[l][r]
_　よし、その方針でチームメンバーに話してみよう。[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
@chara_show name="qa"
@playse storage="voice/scene_04_03/qa-04-03-09.ogg"
「こんな感じで仕様だとエラーを返さないといけないはずなんだけど、今はそのまま正常だって返してるんだよね」[l][r]
[r]
_　システムテスト結果の説明をしに来たQA部門の話を聞いている。[l][r]
[r]
@playse storage="voice/scene_04_03/qa-04-03-10.ogg"
「今回は、基本的な処理の不具合は少ないんだけど、複雑な条件の場合に仕様と違う結果を返す場所が多いみたい。[l][playse storage="voice/scene_04_03/qa-04-03-11.ogg"]今回の仕様はもうちょっとシンプルにできそうな気もするんだけどね……」[l][r]
[r]
_　テスト駆動開発で単体テストを書きながら実装を進めた価値はあったみたいだ。ただし、単体テストは基本的な処理のテストを書いて満足してしまって、複雑な部分がカバーできていなかったようだ。[l][r]

[cm]

@playse storage="voice/scene_04_03/qa-04-03-12.ogg"
「ちょっと量が多くて対応の優先度が高い不具合しか説明できないけど、だいたい他も似た感じだから。[l][playse storage="voice/scene_04_03/qa-04-03-13.ogg"]納期に間に合わせるには結構頑張らなきゃだけど、よろしくね」[l][r]
@chara_hide name="qa"
[r]
_　過去のプロジェクトが結構大変だったのに対して、今回はマシになっているからだろうか。やや前向きな声を掛けてくれている。[l][r]
[r]
_　とはいえ、もっとうまく実装できた気もしている。何が良くなかったんだろうか。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　できればゆっくりと振り返りをしたいところだけど、これから、チームメンバーに残業が続くことを説得しなきゃ……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）ホワイトボックステスト技法を使って、ブラックボックステスト技法を使わない。システムテストでは実装内部には着目しないので、開発者のテストではシステム内部に着目したテストを優先する。[resetfont][l][r]
[r]
_　QA部門もソースコードの中身はほとんど見ないから、ホワイトボックステスト技法は開発者がやるべきテストのためのもの、ってことだろう。[l][r]
_　制御フローに着目して、条件を網羅できるようなテストケースが用意できれば、設計通りに動作することを確認できる。[l][r]
_　ブラックボックスのテスト技法は……QA部門が担保してくれる。開発者とQAの住み分けとしても、任せてしまっていいかな。[l][r]
_　よし、これなら行けそうだ。[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
@chara_show name="qa"
@playse storage="voice/scene_04_03/qa-04-03-14.ogg"
「こんな感じの値を入力すると、無限ループになっちゃうんだよね」[l][r]
[r]
_　システムテストを終えたQA部門が不具合の説明にきてくれた。[l][r]
[r]
@playse storage="voice/scene_04_03/qa-04-03-15.ogg"
「仕様の上限値とかを入れると起きて、そうじゃない場合は起きないから、分岐の条件が間違っているとかだと思うよ。[l][playse storage="voice/scene_04_03/qa-04-03-16.ogg"]そのあたりから確認してもらえると早いかも」[l][r]
[r]
_　なるほど、そういったところで不具合が起きるのか。ホワイトボックステスト技法を使ったし、単体テストのコードカバレッジは80%を超えているところまで確認できている。[l][r]
_　どうしても単体テストでは確認できない処理もあったが、初めて単体テストを行ううえでは頑張った方だと思う。[l][r]

[cm]

_　とはいえ、QA部門にかかると、開発部門では捉えきれなかった不具合がそれなりにあるようだ。しかも、無限ループとかメモリの不正アクセスなどの本番環境で起きると致命的なものが見つかっている。[l][r]
[r]
@playse storage="voice/scene_04_03/qa-04-03-17.ogg"
「システムの全体的な完成度は良いと思うし、不具合も現象としては重大だけど、原因は割と単純なものが多そう、って印象かな。[l][playse storage="voice/scene_04_03/qa-04-03-18.ogg"]調べてもらわないと、本当に原因が単純かは分からないけど」[l][r]
[r]
@chara_hide name="qa"
_　心配しなくても良くできてる、と言われている。が、もっとうまくできた気がする。QA部門が不具合を見つけてくれたから大きな問題にならなそうなだけであって、もっと良いものを作れるように頑張らなければ。[l][r]

[cm]

@chara_hide_all
@layopt layer="message0" visible=false
@bg storage="end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC
@jump storage="scene_04_04.ks" target="start"
[s]
