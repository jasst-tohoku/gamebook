;開発者編5

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｂ）実装後の単体テストが成功してから、コードレビューを実施しよう。[resetfont][l][r]
[r]
@chara_show name="leader"
_　「あれ、単体テストがあれば品質を担保できるんだったら、コードレビューは無くてもいいんじゃないですか？」[l][r]
[r]
_　そんなことはないだろう。変数やクラスの名前が適切なのかとか、コメントが適切なのかは単体テストでは判断できない。[l][r]
_　コーディングスタイルをチェックするLintツールも書き方をチェックできるけど、チームが理解しやすいコードになっているかは機械的な判断だけでは難しいかな。[l][r]
[r]
「それで、単体テストが成功したなら機能的な不備は無いってことですから、レビューも本質的な所に集中できるってことですね」[l][r]

[cm]

_　あくまで単体テストで見つけられるのは、機能的な不備であって性能的な不備は見つからないかもしれない。[l][r]
_　性能的な不備が見つかるように単体テストを書けばいけるかもしれないけど、今回は初めて導入するからそこまでは難しいと思う。[l][r]
_　自動化した単体テストの恩恵はいろいろあるけど、人が何度もテストする労力を減らせるだけで、その機能について他に考えなくても良くなるわけじゃないと思っている。[l][r]
[r]
「なるほど、納得しました。失礼かもですけど、よく考えてるんですね」[l][r]
[r]
……失礼だな。まぁ、いいや。わたしも反射で返した割には的を射た回答になった気がする。[l][r]

[cm]

_　ほかにもチームメンバーと単体テストを自動化するにあたって、細部を詰める話をした。[l][r]
_　やり方はWebを調べればたくさん見つかるが、それをチームでそのままできるのか、やる必要があるのか、できない場合はどうするかをみんなで話し合った。[l][r]
_　もちろん、やってみたら問題はでるだろうけど、事前にこれだけ話せたので不安よりもやってみたらどうなるか、という考えの方が強くなっている。問題が起きたらチームで解決方法を考えればいい。[l][r]
[r]
_　よーし、やるぞ！[l][r]
[r]
_　…………[l][r]

[cm]

「さっき試したら、ここの機能のテストが自分の環境では失敗したんですよ。あとで見に来てもらっていいですか？」[l][r]
[r]
_　朝会をしているときに思ったが、単体テストの結果をもとにした報告が増えてきている。[l][r]
_　これまでは順調か、順調じゃないかぐらいの報告だったが、単体テストを自動化していることによって状況が具体的になってきた印象がある。[l][r]
_　報告自体は増えているが、状況が正しく分かるようになっている、というのは良い傾向だと思っている。[l][r]
[r]
「そういえば、他のひとも困っていると思うんですけど……」[l][r]
[r]
_　ん？　何かヤバイ問題か？[l][r]

[cm]

「最近、テスト実行の時間がかかり過ぎてますよね。一通り実行するのに今だと10分くらいかかってしまって、開発のリズムが悪くなってるのを何とかしたいなって」[l][r]
[r]
_　あー。確かに問題だった。[l][r]
_　最近実装したタイムアウト処理のテストが、どうしても待たなきゃいけないから時間がかかるんだった。それまでは30秒くらいで終わっていたから一息つくのにちょうどいい、とか言っていたけど。[l][r]
_　今は強制的に10分待たされるから、開発するにも集中が途切れてしまう。[l][r]

*choice
@chara_mod name="main" face="default"
@chara_show name="leader"
[cm]

_　実装時の好きなタイミングで単体テストを実行できるようにしているし、構成管理リポジトリへの反映は単体テストが成功したときにのみできるようにしている。実行頻度は高いので時間が長いのは厳しいが……。[l][r]
[r]
「このテストで不具合を見つけているから、消したくないんですよね」[l][r]
[r]
_　この時間のかかるテストは実際に不具合を見つけた実績がある。処理改修時のことを考えると、ただ消すだけはやりたくない。[l][r]
[r]
@chara_hide name="leader"
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）時間はかかるけど、これまでどおり単体テストを実行しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）時間がかかるテストは分けて扱おう。時間が短いテストはこれまでどおり実行し、時間がかかるテストは構成管理リポジトリへの反映時のみに実行できるようにしよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）これまでの単体テスト実行は取り止めて、QAへの受け渡し直前に実行するようにしよう。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
[cm]


[font color="0xffd700"]Ａ）時間はかかるけど、これまでどおり単体テストを実行しよう。[resetfont][l][r]
[r]
@chara_show name="leader"
_　開発のリズムは悪くなるけど、やっぱりせっかく用意した自動単体テストだし、いっぱい使っていきたいからこのままで行きたいかな。単体テストが失敗したら、直さなきゃいけないからできるだけ早く見つかる方がいいだろう。[l][r]
[r]
「分かりました。前までサクサク単体テストが実行できていたんですが、開発も進んでいくと中々悩ましいんですね」[l][r]
[r]
_　うん、試行錯誤しているから多少不便な部分が残るのも仕方ないかな。[l][r]
[r]
_　…………[l][r]

[cm]

_　今日中にQA部門に実装を引き渡すことになっている。朝会では簡単な修正作業が残っているだけで、定時には余裕で終わる予定だったんだけど……。[l][r]
[r]
「すみません、もうちょっとで終わると思うんですが。行けると思っていても単体テストがうまく通らなくて……」[l][r]
[r]
_　定時を超えて残業作業中である。修正作業自体は話を聞いている限り、簡単なはずである。[l][r]
_　なので、今起きているのはイージーミスなんだと思うんだが、上手く単体テストが通っていない。[l][r]
_　もしかしたら、追加した単体テストの方のミスかもしれないが、まだ原因は分かっていない。[l][r]

[cm]

「これでテストを走らせて、と……ちょっと、顔洗ってきますね」[l][r]
[r]
@chara_hide name="leader"
_　単体テストを走らせても、すべての結果が分かるのは10分後だ。数回ならいいが、今日は何度も実行しているので、単体テストの実行だけで多くの時間が取られている。[l][r]
_　開発のリズムが悪いのは順調な時には気にならないけど、急いでいるときにはこんなにも狂暴なんだと、単体テストを実行しているディスプレイを眺めながら、身に染みて分かった。[l][r]
[r]
@chara_mod name="main" face="down"
_　あぁ、テストに失敗した通知が出ているのが見えた……。[l][r]

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

[font color="0xffd700"]Ｂ）時間がかかるテストは分けて扱おう。時間が短いテストはこれまでどおり実行し、時間がかかるテストは構成管理リポジトリへの反映時のみに実行できるようにしよう。[resetfont][l][r]
[r]
@chara_show name="leader"
_　開発時に単体テストを実行する頻度よりも構成管理リポジトリに反映する頻度の方が少ない。時間がかかるテストは頻度を下げたとしても、あるタイミングで実行できるようにしておきたい。[l][r]
[r]
「では試しにテストを分けてみますね。後でチェックをお願いします」[l][r]
[r]
おぉ、やりたい意図を理解してくれるので、話が早くて助かる。[l][r]
[r]
_　…………[l][r]
@chara_hide name="leader"

[cm]

_　開発がいったん終わってQA部門に引き渡してからドキュメント作成をしている。[l][r]
_　数日前に、QA部門はシステムテストに入った、と聞いているがそれ以降の音沙汰がない。作業中に、後ろから声を掛けられた。[l][r]
[r]
「あなたたちのプロダクトの話に来たんだけど……」[l][r]
[r]
@chara_show name="qa"
_　何かトラブルか？
_　これまで音沙汰が無かったから凄く不安なんだが……。[l][r]

[cm]

「不具合が少なかったから、あなたたちのプロダクト用に当ててた工数を減らして他のプロダクトに当てたいんだけど、いいかな？」[l][r]
[r]
_　ほぇ？[l][r]
_　予想してなかったので変な声がでた。[l][r]
[r]
「あれ？　バグチケットを見てないの？　いつもより少ないから、QA部門でテストケースにミスがないかをチェックしちゃったよ。今回は何かあったの？」[l][r]
[r]
_　バグチケットを見てなかったのはドキュメントづくりに苦戦してたからです……。[l][r]

[cm]

_　単体テスト自動化を試してみたけど、やっているうちは一生懸命だったから、こんなに影響があったなんて気づいていなかった。[l][r]
_　あ、他のプロダクトに工数を回すのは問題ないです。[l][r]
[r]
「ありがとう。バグが少ないから、再テストは一通り対応終わってからでいいかな、って思っているけど、問題ないかな？　対応工数の見込みが立ったら、スケジュール調整させてね」[l][r]
[r]
_　大丈夫だよー。決まったら連絡するねー。[l][r]
[r]
「あと、一区切りついたら今回の自動化の話も聞かせてほしいな。QA部門に役に立つことが多そうだから」[l][r]
@chara_hide name="qa"

[cm]

_　彼女が帰って一人になってから、ゆっくりと嬉しさが込み上げてきた。[l][r]
_　試したことが見える成果になったことがとっても嬉しい。わたしだけじゃなくてチームの成果でもあるけど、単体テストの自動化を試した価値があって良かった。[l][r]
[r]
_　よし！[l][r]
_　この喜びをさっそくチームメンバーと共有しよう。[l][r]

[cm]

@eval exp="sf.end05=true"
[font color="0xffd700" bold=true]HAPPY END[resetfont][l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*goToTitle"]タイトルへ戻る[endlink][resetfont]
[endnowait]
[s]


*selectC
[cm]

[font color="0xffd700"]これまでの単体テスト実行は取り止めて、QAへの受け渡し直前に実行するようにしよう。[resetfont][l][r]
[r]
@chara_show name="leader"
_　開発のリズムが悪いのは良くない。実装する機能はまだまだあるし、実装に時間がかかってはスケジュールも遅れそうだ。[l][r]
_　単体テストは用意しておくし、QA部門へ受け渡す前にまとめて実行できればいいだろう。それでも単体テストの実行が10分くらいであれば、手動でテストを実行するよりも遥かに早い。[l][r]

[cm]

「じゃあ、単体テストの実行はQA部門への受け渡し前までは任意にする感じですね。構成管理リポジトリへの反映はテストが成功したときのみにしていますけど、それも外しますか？」[l][r]
[r]
_　それでいいだろう。効率良く開発を進めるためにはリズムの良さも重要だ。QA部門への受け渡し前までは単体テストはほとんど実行されなくなるだろうから、不具合対応の工数は今よりも大目に見ておかないといけないくらいかな。[l][r]
[r]
_　計画を修正すれば、問題なく行けそうな範囲かな。やってみよう。[l][r]
[r]
_　…………[l][r]
@chara_hide name="leader"

[cm]

@chara_show name="qa"
「それで、QA部門にはシステムをいつ頃渡せそうですか？」[l][r]
[r]
_　単体テストで見つかった不具合の修正が間に合わず、当初の受け渡し日を超えた上で、今もQA部門に催促を受けている。[l][r]
@chara_hide name="qa"
_　単体テストを後回しにしたことで、不具合が残ることは予想していたとおりだ。[l][r]
_　しかし、不具合がある実装を前提に、新しい機能の実装が行われたため、複雑な不具合が増えてしまった。[l][r]
_　基本的なフローに関わる範囲でも、原因特定が難しい不具合がいくつかあり、それを直さないとシステムテストができない状態だ。[l][r]
@chara_mod name="main" face="orz"
_　まだ、渡せる時期が分かるまで時間がかかりそうだと、QA部門に説明をしなければならない。厳しい顔を向けられており、とても気が重い……。[l][r]

[cm]

[font color="0xff0000" bold=true]BAD END[resetfont][l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*choice"]選択肢へ戻る[endlink][resetfont][r]
[font color="0xffd700"][link target="*goToTitle"]タイトルへ戻る[endlink][resetfont]
[endnowait]
[s]
