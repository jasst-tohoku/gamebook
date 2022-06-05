;開発者編4

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｃ）ホワイトボックステスト技法もブラックボックステスト技法も両方使う。開発者も処理が仕様に合うかを着目することが重要だ。[resetfont][l][r]
[r]
_　ホワイトボックステスト技法は開発する人たちが担保するのが良いとして、ブラックボックステスト技法もやった方が良さそうだ。[l][r]
_　基本設計で機能分割をする際に、機能の仕様もざっくりだが考えているはずだ。ブラックボックステスト技法をもとに考えると、その機能がどうあるべきか、にも考えが向くから、仕様の認識ずれにも気づきやすくなりそうだ。[l][r]
_　よし、これでチームメンバーに話してみよう。[l][r]

[cm]

@chara_show name="leader"
@playse storage="voice/scene_04_04/leader-04-04-01.ogg"
「これってブラックボックステスト技法とホワイトボックステスト技法は、テストケースを分けなくてもいいんですよね。[l][r]
@playse storage="voice/scene_04_04/leader-04-04-02.ogg"
_　ブラックボックステスト技法でテストケースを考えて、条件が網羅できてなければテストケースを足すイメージだと無駄が無くて良さそうに思いました」[l][r]
[r]
_　さっそくメンバー間で議論が起きている。やる気が満ち溢れていて頼もしい。わたしは心の中で感動の涙を流している。[l][r]
[r]
@playse storage="voice/scene_04_04/leader-04-04-03.ogg"
「ところで……」[l][r]
[r]
_　ん？[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

@playse storage="voice/scene_04_04/leader-04-04-04.ogg"
「コードレビューって今回はどうしますか？」[l][r]
[r]
_　あぁ。これまでも実装したコードはチームの誰かにレビューして貰うルールだった。[l][r]
_　これまでは単体テストは開発者に任されていたから、コードレビューもロジックが正しいかどうかの指摘が多かったんだっけ。[l][r]
@chara_hide name="leader"
_　今回は……[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）単体テストで品質が担保できるからコードレビューは実施しない。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）実装後の単体テストが成功してから、コードレビューを実施しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）実装後の単体テスト成否に関わらず、コードレビューを実施しよう。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]


[font color="0xffd700"]Ａ）単体テストで品質が担保できるからコードレビューは実施しない。[resetfont][l][r]
[r]
@chara_show name="leader"
_　単体テストがうまく通っているのであれば、品質は十分じゃないんだろうか。今回は単体テストコードを書く時間も必要になるので、コードレビューは無くてもいいんじゃないか。[l][r]
[r]
@playse storage="voice/scene_04_04/leader-04-04-05.ogg"
「分かりました。[l][playse storage="voice/scene_04_04/leader-04-04-06.ogg"]その分、単体テストをしっかりやる感じですね。[l][playse storage="voice/scene_04_04/leader-04-04-07.ogg"]ちなみに、中身が無くてテストを通すだけの処理を書く人がいる場合は……」[l][r]
[r]
_　おい、それはヤメロ。そんなことする人はチームメンバーにはいないから、善意に任せる、でいいだろう。[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
@playse storage="voice/scene_04_04/leader-04-04-08.ogg"
「ここの処理は……もしかして、こういうことですかね。[l][playse storage="voice/scene_04_04/leader-04-04-09.ogg"]であれば、実装がこんな感じになっているのも納得できますが」[l][r]
[r]
_　緊急で対応する必要がある不具合が出てきてチームメンバーで実装を修正している。[l][r]
_　だが、該当箇所を実装したメンバーがしばらく休んでいるタイミングなのが状況を悪くしている。コメントが少なく、実装意図が読み解けないため、修正方法が決まらない。[l][r]
[r]
_　単体テストがあるから、修正しても誤りがあればすぐに分かるのはいい。しかし、これだと思った実装でも、単体テストで良く分からないNGがでてくるのだ。まるでパズルを解いているようである。[l][r]

[cm]

@playse storage="voice/scene_04_04/leader-04-04-10.ogg"
「ちょっとこれは、図とかを書かないと混乱しますね。[l][playse storage="voice/scene_04_04/leader-04-04-11.ogg"]ホワイトボードを席のところまで持ってきますね」[l][r]
[r]
@chara_hide name="leader"
_　単体テストはチームで共有しているが、コードを理解しているのが担当者しかいない状況はまずかったなぁ。こういった保守作業で想定以上に負担が掛かっている。[l][r]
_　もうちょっと先のことまで考えてれば違ったかな、と思っていると、大きな音がした。ホワイトボードを運ぶ途中で、コードに引っ掛けて机の備品を床にひっくり返してしまったようだ。[l][r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　悩みは尽きないなぁ、とため息がでる。片付けを手伝いに行こうか……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
@jump storage="scene_04_05.ks" target="*start"
[s]


*selectC
[cm]

[font color="0xffd700"]Ｃ）実装後の単体テスト成否に関わらず、コードレビューを実施しよう。[resetfont][l][r]
[r]
@chara_show name="leader"
_　単体テストは機能的に上手くいっているかを確認する。コードレビューはロジックが妥当かを確認する役割もあるけど、読みやすいかだったり、コメントが適切かを判断したりもするよね。[l][r]
_　単体テストとコードレビューは役割が違うからそれぞれ別々にやった方がいいと思うよ。[l][r]
[r]
@playse storage="voice/scene_04_04/leader-04-04-12.ogg"
「わかりました。では、実装ができた段階でコードレビューを依頼しますね」[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
_　今、対面でコードレビューをやっているんだけど、このロジックだと問題があるんじゃないかな？[l][r]
[r]
@playse storage="voice/scene_04_04/leader-04-04-13.ogg"
「そうなんですよ。[l][playse storage="voice/scene_04_04/leader-04-04-14.ogg"]単体テストも通っていないので、実装方法を相談したくて……」[l][r]
[r]
_　またか…コードレビューで実装の相談を受ける機会が増えた気がする。[l][r]
_　前までのプロジェクトは単体テストをやっていなかったので、そもそも問題があるか気付かずにコードレビューを行うことが多かった。[l][r]
_　そういう意味では、あるか分からない問題をチェックしていたレビュワーの負担は、今回からは減った気がする。[l][r]

[cm]

_　だけど、実装の相談がコードレビューで起きるのは良くない。実装を直したら、またコードレビューが必要になる。[l][r]
_　結局、コードレビューの回数は前までのプロジェクトと対して変わらないんじゃないか。[l][r]
[r]
@chara_hide name="leader"
_　なかなか完成しない実装が多くてイライラしていたわたし自身の言葉で、わたしの判断の何が良くなかったかが分かってしまった。[l][r]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　せめて、単体テストを成功させてから、コードレビューに持ってきてよ。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
