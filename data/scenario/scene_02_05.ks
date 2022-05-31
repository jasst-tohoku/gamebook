;組込開発者編5


*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｂ）これまでのテスト資産も活用しよう。従来のテストを行いつつ、試作機テストも適度に実行する。[resetfont][l][r]
[r]
_　実装の調整が試作機固有の箇所だけであればいいが、共通部の修正も必要になる。[l][r]
_　そういったときにこれまでのテスト資産を使って共通部分のデグレードが起きていないかを確認しながら進めれば自信をもって開発できる。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true

_　あとは、評価環境では無い機能に対して作ったモックオブジェクトをどうするかだ。[l][r]
_　実装ではモックオブジェクトは本来必要な機能を実装したものに置き換えるのだが……[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）本番環境で動くプログラムを動作確認できればいい。試作機ではモックオブジェクトを使った自動テストを行わず、試作機実装を用いたテストを行う。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）モックオブジェクトを使ったテストで動作を確認できれば品質は保証できる。試作機ではモックオブジェクトを用いた自動テストを行い、試作機実装を用いたテストを行わない。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）これまでのテスト資産も活用しよう。試作機ではモックオブジェクトを用いた自動テストも、試作機実装を用いたテストも両方行う。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]

[font color="0xffd700"]Ａ）本番環境で動くプログラムを動作確認できればいい。試作機ではモックオブジェクトを使った自動テストを行わず、試作機実装を用いたテストを行う。[resetfont][l][r]
[r]
_　モックオブジェクトを使った自動テストは本番機能を使うまでの繋ぎであり、試作機がきたのならその役目を終えていいはずだ。[l][r]
_　開発環境や評価環境ではモックオブジェクトのテストは使うが、試作機用のテスト資産ではモックオブジェクトを除外しておこう。[l][r]
_　よし、もうひと踏ん張りだ。[l][r]
[r]
_　…………[l][r]

[cm]

@chara_show name="manager"
「……つまり、本番機でもハードウェア不具合が残ってて、それをソフトウェアで吸収できるようにしてほしいんだって」[l][r]
[r]
_　本番機についての説明会議に参加してきた部長から、気の重たくなる話を聞かされた。ハードウェアの不具合は、こちらの試作機テストでも同様の不具合が確認できた。ただし、不具合の原因特定がうまく行かなかったものでもある。[l][r]
_　報告はしていたが、結局そのまま行くことになったのか……。[l][r]

[cm]

「追加対応の作業工数を明日の午前中までに見積もってくれないかな。午後には対策会議に行ってくるから」[l][r]
[r]
@chara_hide name="manager"
_　見積もりは問題なくできそうだ。原因が分からない不具合を回避するにはどうすればいいかは、ずっと考えていた。[l][r]
_　ただ、回避策は複雑な実装が必要そうだ。正直、リリース間際でやりたい作業ではない。また、残業や休日出勤も覚悟しておかないといけなそうだ。[l][r]
@chara_mod name="main" face="orz"
_　わたしは返事をしたが、疲れを隠すことができなかった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
[cm]

[font color="0xffd700"]Ｂ）モックオブジェクトを使ったテストで動作を確認できれば品質は保証できる。試作機ではモックオブジェクトを用いた自動テストを行い、試作機実装を用いたテストを行わない。[resetfont][l][r]
[r]
_　いまあるモックオブジェクトを使った自動テストはそのまま試作機上でも動作させられる。それで品質を担保できるんだから、わざわざ試作機機能をテストする必要はない。[l][r]
_　今ある評価環境のテスト資産を試作機に適合させる対応を早めに用意しよう。[l][r]
[r]
_　…………[l][r]

[cm]
@chara_show name="qa"
「この機能なんだけど、試作機が延期するときに仕様変更が入っているの。この実装は古い仕様を元にしているみたい」[l][r]
[r]
_　QA部門の担当者から試作機の受け入れテストで出てきた不具合の説明を受けている。結構な数が出ているから、対応に時間が必要そうだ。[l][r]
[r]
「他の開発チームでも仕様変更に対応しきれていない不具合は多いから、そんなに気にしないでね。こっちはちょっと数が多いかもだけど……」[l][r]
[r]
_　暗に、もっとしっかり作れ、と言われている……。[l][r]

[cm]

「不具合は直すよりも原因調査を優先してください。本番機に向けた修正がそろそろなので、ハードウェア起因の不具合特定が遅れると不具合がそのまま本番機にも載っちゃうので」[l][r]
[r]
@chara_hide name="qa"
@chara_mod name="main" face="orz"
_　結構な数の不具合があるから、調査をするにも骨が折れる。とりあえず、仕様変更ミスのものは除外して原因調査しよう。[l][r]
_　これは残業や休日出勤しないと一通りの調査は間に合わないかもしれないな……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectC
[cm]

[font color="0xffd700"]Ｃ）これまでのテスト資産も活用しよう。試作機ではモックオブジェクトを用いた自動テストも、試作機実装を用いたテストも両方行う。[resetfont][l][r]
[r]
_　試作機上でモックオブジェクトを用いた自動テストを実行したら、いくつかの項目で失敗した。[l][r]
_　いくつかの機能の挙動が試作機と評価機で異なっていたことが原因だったが、デバイスを早期に原因調査の対象から切り分けることができたため、短い時間で特定することができた。[l][r]

[cm]
@chara_show name="manager"
「いやぁ、無事製品がリリースできて良かったよ。言った通り、PRJ初期にテストの自動化を進めて役に立っただろう？」[l][r]
[r]
_　……なんで部長の手柄みたいに言っているんだろう。[l][r]
_　結局、試作機がきてからはしばらく残業まみれだったんだけど。[l][r]
[r]
「割と危ない不具合を本番機前に見つけてくれたのは助かった、ってハードウェア部門からも聞いているよ。しっかり効果あったんじゃない？」[l][r]
[r]
_　確かに、本番機にも不具合が残っていたらソフトウェアで何とかしてくれ、といわれていたと思う。そう言われると悪い気はしない。[l][r]

[cm]

「QA部門もあとで意見交換させてくれ、って言っていたから落ち着いたら今回の活動内容をまとめておいてくれると助かるよ。[l][r]
_　あと、今回のテスト自動化の取り組み、社内事例として発表する準備をしているから、そっちも協力してね」[l][r]
[r]
_　おぉ、本当に悪い気がしない。[l][r]
_　最初は不安だったしテストの進め方で考えることは多かったけど、開発自体はいつもよりも順調にできていたと思う。[l][r]
_　今回、良い製品が開発できるように向き合ったのは、結構自信になってきたかな。[l][r]

[cm]

@eval exp="sf.end03=true"
@chara_hide_all
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@bg storage="happy_end.jpg" time=1500 method="fadeIn"
[l]
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
