;開発者編1


*start
@chara_hide_all
@playbgm storage="scene.ogg"

[cm]

@chara_show name="main"
[font color="0xffd700"]Ｄ）開発者として自動テストを用いた開発を試そうとしている。[resetfont][lr]
[r]
_　新しいWebシステムの開発リーダーに任命されたので、そのプロジェクトで自動テストを試してみようと思っている。[lr]
_　わたし含めて５人のチームで開発することになりそうだ。[lr]
[r]
_　システムテストはQA部門が担当するので、仕様書や設計書は完成したら渡してほしいって言われていたっけ。[lr]
_　あとはなんて言っていたかな……。[lr]

[cm]

@chara_show name="qa"
@playse storage="voice/scene_04_01/qa-04-01-01.ogg"
「システムテストはQA部門がやりますけど、開発チームで最低限動くところまで確認してから受け渡してください。[lr]
@playse storage="voice/scene_04_01/qa-04-01-02.ogg"
_　最近、受け渡されたシステムの初歩的な機能が動かないことが多くてシステムテストが始められないことが多いので」[lr]
[r]
@chara_hide name="qa"
_　……そうだった。[lr]
_　前のプロジェクトでも期限ぎりぎりで結合したシステムをQA部門に渡したら、動かないって怒られたっけ。根に持たれている気がする。[lr]
_　開発チームは「作ったら動作を確認しよう」と上司に言われるけど、開発者の裁量に任されているので、せいぜい実装機能の基本フローをテストするくらいだ。[lr]
_　結合したときにも「QA部門がテストしてくれるから」とあまりテストらしいことはしなかった気がする。[lr]

[cm]

_　せっかく開発チームのリーダーになったんだから、自分たちで作ったところは自信をもってからQA部門のシステムテストに回せるようにしたいとは思う。[lr]
[r]
_　最近はアジャイル開発の本とかも見ているけど、「テスト駆動開発」や「テストファースト」っていうやり方がいいらしいので、参考にしながらやってみようかな。[lr]

*choice
[cm]
@restore

_　わたしがこれまで経験した開発では、あらかじめシステムを機能に分割しておいて、開発者ごとに複数の担当機能を割り当てていたんだっけ。[lr]
_　「テストファースト」っていう考え方だと、機能を実装するときに単体テストを用意するのは……[lr]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）機能を実装開始する前だ。あらかじめ単体テスト内容が明確なら、実装も迷わない。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）一つの機能実装が終わった後だ。機能ができたら、すぐにその機能をテストしよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）担当者のすべての機能実装が終わった後だ。他者との結合の前に、作った機能をテストしよう。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
@jump storage="scene_04_02.ks" target="start"
[s]


*selectB
[cm]


[font color="0xffd700"]Ｂ）一つの機能実装が終わった後だ。機能ができたら、すぐにその機能をテストしよう。[resetfont][lr]
[r]
_　チームメンバーには機能ごとに単体テストを書いてもらうようにしよう。[lr]
_　これまで実装後に碌にテストできなかったときと比べれば、しっかりと単体テストを用意できるはずだ。[lr]
_　不具合を早く見つけて、早く対処できるだろう。[lr]
[r]
_　よし、この方針でやってみよう。きっとうまく行くはずだ。[lr]
[r]
_　…………[lr]

[cm]

@fadeoutbgm
_　プロジェクトを進めるうちに、当初の期待とは違う状況になってきた。[lr]
[r]
_　機能を実装してから単体テストを書いてもらうことで、確かに早い段階で不具合を見つけることができた。[lr]
_　ただし、開発速度が想定よりも遅くなっている。[lr]
_　単体テストコードを追加で実装するため、機能ごとの開発期間はこれまでよりも延びるのは想定していた。[lr]
_　しかし、作りこんだ機能の仕様矛盾に単体テストで気付くため、修正期間がかなり長くなっている。前のプロジェクトでは仕様矛盾に気付かずに進めていたところだが……。[lr]
_　単体テストをしているため、品質は前に比べて高まっていると感じているが、修正に時間がかかり過ぎている。この調子では予定工数を大幅に超えてしまう。[lr]

[cm]

_　こんなときに、部長は長期休暇を取っていて不在である。ひとりでなんとかするしかない。[lr]
_　チームメンバーからは単体テストを書くことを止めて、実装を先に終わらせよう、という意見が出ている。[lr]
_　単体テストを書かなくなると不具合が残ったままになってしまうので、今はもう少しこのままやってみよう、と伝えている。だが、このままではジリ貧だ。[lr]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
_　今は残業で単体テストを書いているが、疲労を隠せなくなってきた。対策を考えなければいけないのに、その頭が回らない。どうしよう……。[lr]
[r]
@playse storage="voice/scene_04_01/main-04-01-01.ogg"
「あぁ、ここの実装も、仕様と矛盾してる……」[lr]

@badend storage="scene_04_01.ks"


*selectC
[cm]

[font color="0xffd700"]Ｃ）担当者のすべての機能実装が終わった後だ。他者との結合の前に、作った機能をテストしよう。[resetfont][lr]
[r]
_　機能実装の後に単体テストをする、というのは一般的な開発モデルのV字モデルでも見た気がする。[lr]
_　これまでできていなかった単体テストをしっかり実施できれば、品質を上げられるはずだ。[lr]
[r]
_　よし、良い開発ができそうだ。やってみよう。[lr]
[r]
_　…………[lr]

[cm]

@fadeoutbgm
@playse storage="voice/scene_04_01/qa-04-01-03.ogg"
「開発チームで最低限動くところまで確認してほしかったんですが……」[lr]
@chara_show name="qa"
[r]
_　QA部門に呼ばれて、やや呆れているような口調で話を切り出された。[lr]
_　実装が終わってからQA部門に受け渡すまでに不具合修正期間がほとんどなく、単体テストコードも十分に用意できなかった。[lr]
_　なので、動作確認できた部分は少ないし、見つけた不具合もほとんど修正できずにQA部門に受け渡すことになった。その結果は、[lr]
[r]
@playse storage="voice/scene_04_01/qa-04-01-04.ogg"
「初歩的な機能が動かないので、まともにシステムテストを始められません。[l][playse storage="voice/scene_04_01/qa-04-01-05.ogg"]直してもらわないといけないんですが、今から順調にいっても予定納期に間に合わせることは厳しいと思います。[lr]
@playse storage="voice/scene_04_01/qa-04-01-06.ogg"
_　わたしたちは別案件のテストもあるので、テスト時期が遅れるのはとても困るんですが」[lr]

[cm]

_　となりにいる部長は苦虫を噛み潰したような顔をしている。[lr]
[r]
@chara_hide name="qa"
@chara_show name="manager"
@playse storage="voice/scene_04_01/manager-04-01-01.ogg"
「じゃあ、納期は遅らせる方向でお客さんに話すよ。[l][playse storage="voice/scene_04_01/manager-04-01-02.ogg"]今から説明の準備で席を外すから、この先の計画を君たちで調整しておいてよ」[lr]
[r]
@chara_hide name="manager"
_　そう言って部長は部屋から出て行ってしまった。[lr]
_　お客様に早く伝えた方が良いのは間違いないが、この会議の時間を惜しむほどではないはずだ。この場に居たくない、という感情が見て取れた。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　これから、不機嫌なQA部門とふたりきりで話さなければならないのか、と思うと気が重たくなってきた……。[lr]

@badend storage="scene_04_01.ks"
