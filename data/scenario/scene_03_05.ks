;組織管理者編5

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｃ）工数削減の効果が出るのに時間がかかるので、別の効果がないか検討する。[resetfont][l][r]
[r]
_　このままでは報告ができない。テストを自動化することで、他に効果はないだろうか。[l][r]
_　リグレッションテストは、システムの改修による意図しない影響を見つけるテストだから、リリース前だけでなく、ソースコードに変更が入るたびに実行したらどうだろう。デグレードを素早く発見できるに違いない。[l][r]
_　その結果をすぐに開発者に報告できれば、バグ修正にかかる日数が短縮できるようになり、品質が安定するのではないか。[l][r]
_　具体的に削減できる数字は出せないが、検討結果として提示しよう。[l][r]

[cm]

@chara_show name="manager"
「なるほど。これまではリリース前にならないとデグレードが確認できなかったものが、開発中に見つけられるということだね。デグレが修正されたあとの再テストも自動でできるから……評価コストは下がらないけど、内部失敗コストが削減できる、とも言えそうだな。よし、では進めて」[l][r]
_　内部失敗コスト……？　ああ、品質コストの一つで、リリース前に見つかる不具合に対応するコストだったか。すっかり忘れていた。自動化にはさまざまな効果があるなあ。[l][r]
@chara_hide name="manager"
_　部長から工数の承認も得たし、実現に向けて準備を進めよう。[l][r]
デグレードを素早く見つけるためには、どんなタイミングでテストを実行して、どうやってフィードバックするかが鍵になりそうだ。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message0" visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　テスト自動化担当と関係者を呼んで、自動テスト構築について打ち合わせよう。アジェンダはこんなところか。[l][r]
_　・自動テストの実行タイミング[r]
_　・自動テスト結果の通知方法[r]
_　・自動テストで使用する環境[l][r]
_　ジャスペイチームはPMと開発者、テスト担当者がいるんだったな。インフラは基盤課が担当しているんだった。[l][r]
_　さて、打ち合わせには誰を呼ぼうか。 [l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）テストのことなので、テスト担当者だけで話し合う。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）プロジェクト全体にかかわるので、テスト担当者の他にPMと開発者を呼ぶ。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）課はまたぐが、インフラ担当者も呼ぶ。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）テストのことなので、テスト担当者だけで話し合う。[resetfont][l][r]
[r]
@fadeoutbgm
_　どういうテストをすればいいかは分かるが、上手くテストが実装できない。何とか作ったものの、実は開発側でも同じようなテストコードを書いていた。自分達のテストコードよりよっぽどしっかりしている。[l][r]
_　テスト自動化には「テストを作る力」と「自動化する力」の二つが必要だったんだ。[l][r]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　PMから勝手にテスト自動化を進めたことにも不信感を持たれ、テスト自動化の実装に暗雲が漂ってきた。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]

*selectB
[cm]

[font color="0xffd700"]Ｂ）プロジェクト全体にかかわるので、テスト担当者の他にPMと開発者を呼ぶ。[resetfont][l][r]
[r]
@fadeoutbgm
_　スケジュールもPMに相談し、開発と協力しながら、テストコードが動くところまでできた。よし、行けそうだ！　と思ったのも束の間、安定して動作する環境がないことに気がついた。[l][r]
_　自動テストを安定して動かすハードウェアの納入には、半導体不足の影響で時間がかかるらしい。[l][r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"
_　PMからは、これ以上のスケジュール調整はできないと言われた。今回は、テスト自動化を諦めるしかないのか……。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]

*selectC
[cm]

[font color="0xffd700"]Ｃ）課はまたぐが、インフラ担当者も呼ぶ。[resetfont][l][r]
[r]
@chara_show name="infra"
「システムテストの自動化用に専用環境を用意しましょうか」[l][r]
「単体テストと結合テストの実行後に、自動化したリグレッションテストを実行するように設定しましょう」[l][r]
[r]
_　話が早くて助かった。[l][r]
_　こうして、組織全体で協力してテスト自動化を導入することに成功した。[l][r]
_　リグレッションテストの回数を増やすことにより、デグレードが素早く検知できるようになった。[l][r]
_　すでに開発者が構築していた自動テストと連携できたため、システムテスト自動化の導入後もスムーズに運用ができている。[l][r]
@chara_hide name="infra"

[cm]

@chara_show name="manager"
@fadeinbgm storage="happy_end.ogg" time=1000
「ジャスペイ開発プロジェクトは、テストプロセスやテストサイクルが更にうまく回るようになったな。会社のモデルプロジェクトにするために、まだ課題は残っているかね」[l][r]
[r]
_　なんだ。部長はコスト削減と言いながらも、社内のモデルプロジェクトを作りたかったのか。[l][r]
_　それならそうと、最初から言ってくれればよかったのに。[l][r]
_　今回は自動化できなかったテストケースもあるし、モデルプロジェクトにするにはもう少し時間がかかりそうだな。自動化したテストによって安定した品質が保てたら、ふるまい駆動開発にも挑戦してみたい。[l][r]

[cm]

@eval exp="sf.end03=true"
@chara_hide_all
@layopt layer="message0" visible=false
@bg storage="white.jpg" time=1000 method="fadeIn"
@bg storage="happy_end.jpg" time=1500 method="fadeIn"
[l]
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
