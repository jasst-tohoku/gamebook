;開発者編2

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ａ）機能を実装開始する前だ。あらかじめ単体テスト内容が明確なら、実装も迷わない。[resetfont][l][r]
[r]
_　これなら、仕様に対する認識ずれも減るんじゃないかな。[l][r]
_　単体テストを用意するには、機能の入出力がどうすればいいかを考える必要がある。[l][r]
_　実装開始前に仕様から入出力がどうなるかを具体化しないといけないから、仕様に曖昧なところがあれば早く気付けそうだ。[l][r]
_　そういえば、前に他とやり取りするデータを、実装しながら考えていた人がいたっけ。[l][r]
_　相手側と仕様の認識ずれがあって、修正に結構時間がかかっていた気がする。そういう問題が防げそう。[l][r]

[cm]

_　あとは、単体テストコードの書き方を確認しておかないと。Webで書き方を説明しているサイトは……結構ありそうだ。[l][r]
_　とりあえず、情報が揃っているサイトを参考にして、と。単体テストを実装したり実行したりするのは単体テストフレームワークを使うのが良さそう。[l][r]
_　あとは……「テスト駆動開発」について書いてあるサイトもあった。[l][r]
_　テストが失敗する状態のレッド、実装してテストが成功する状態のグリーン、ソースコードを修正して読みやすくするリファクタリングを繰り返す開発手法かぁ。ふむふむ。[l][r]
_　リファクタリングは、やった方がいいって開発が上手い人は言ってるけど、実際はやる時間があまり取れないんだよね。へぇ、リファクタリングは、設計を向上させるのか。なるほどなるほど。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　開発プロセス上は、実装前に基本設計するフェーズがあるけど、毎回レビューでの指摘が多くって、いまだに設計が上手くできる自信がないんだよね。[l][r]
_　リファクタリングで設計を向上できるテスト駆動開発だったら、もしかして、開発プロセスでの設計の役割が変えられるかもしれない？[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）コードレベルの設計向上が図れるだけで、全部じゃない。これまでどおり、基本設計を行おう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）事前に設計するよりも、学習しながら設計したほうが良いものになる。基本設計は行わずに、テスト駆動開発で設計品質を担保しよう。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
@jump storage="scene_04_03.ks" target="start"
[s]


*selectB
[cm]


[font color="0xffd700"]Ｂ）事前に設計するよりも、学習しながら設計したほうが良いものになる。基本設計は行わずに、テスト駆動開発で設計品質を担保しよう。[resetfont][l][r]
[r]
_　基本設計を行わなければ、それだけ早く実装にも入れそうだ。[l][r]
_　基本設計は難しくていつも多めの時間を取っている。[l][r]
_　けれど、テスト駆動開発で進めていけば基本設計が無くても設計を良くして行けるはずなので、高品質化だけではなく時間短縮も期待できる。[l][r]
_　良いことばかりじゃないか。こうしてみると何故これまでやっていなかったのか、という気にもなってくる。[l][r]
_　よし、この進め方で計画を立てよう。[l][r]
[r]
_　…………[l][r]

[cm]

@chara_show name="manager"
@playse storage="voice/scene_04_02/manager-04-02-01.ogg"
「開発は順調に進んでいるかい？」[l][r]
[r]
_　部長が開発の様子を見に来ていた。[l][r]
_　テスト駆動開発を導入して開発を進めてしばらくたったが、驚くほどに順調だ。[l][r]
_　単体テストを先に書くことで仕様理解が進んで、考慮漏れも無くなった。基本設計に割いていた時間から実装を始めているので、従来と比べて進み具合も早い。[l][r]
[r]
@playse storage="voice/scene_04_02/manager-04-02-02.ogg"
「え、基本設計やってないの？　設計図はコードから自動生成すればいいけど、後で問題にならない？」[l][r]
[r]
_　問題が起きてもそれに応じてリファクタリングで設計を改善していける、これがテスト駆動開発という洗練されたやり方なんですよ。[l][r]

[cm]

@playse storage="voice/scene_04_02/manager-04-02-03.ogg"
「あぁ、上手くいきそうだと思っているんならいいんだけど。[l][playse storage="voice/scene_04_02/manager-04-02-04.ogg"]今回は処理時間短縮のために並列処理とか必要になると思うから、気を付けてね」[l][r]
[r]
@chara_hide name="manager"
_　そういって、部長は席へと戻っていった。[l][r]
_　問題が起きても適切に対処できるテスト駆動開発を採用しているんだ。小さな問題はあっても、大きな問題になるまえに防げるはずだ。[l][r]
_　こんなに順調にいっているのに心配なんて必要ないだろう。[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
@chara_show name="leader"
@playse storage="voice/scene_04_02/leader-04-02-01.ogg"
「結合して動かして分かったんですが、これらの処理時間が期待に対して、とても遅くなっているんですよ。[l][r]
@playse storage="voice/scene_04_02/leader-04-02-02.ogg"
_　今からこれを直すにも、並列処理に適した構造になっていないところから手を付けるので、結構時間がかかっちゃいますね……」[l][r]
[r]
_　かなり早めに機能結合できたところまでは良かったが、処理時間の問題が見つかった。[l][r]
_　テストを書いて、リファクタリングで解決できると思っていたのだが、並列処理を含んだ部分のテスト結果が実行の度に変わってしまって、チームメンバーを集めて作戦会議を行っている。[l][r]
@chara_hide name="leader

[cm]

_　大規模な修正が必要になりそうで、先行できた計画の余裕が無くなり、むしろ納期に間に合うかの不安が出てきてしまった。[l][r]
[r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　部長のいう通りになってしまった。[l][r]
_　あのとき、部長がしっかり止めてくれれば違ったはずなのになぁ……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
