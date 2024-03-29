;組織管理者編5


*start

[cm]

[font color="0xffd700"]Ｃ）工数削減の効果が出るのに時間がかかるので、別の効果がないか検討する。[resetfont][lr]
[r]
_　このままでは報告ができない。テストを自動化することで、他に効果はないだろうか。[lr]
_　リグレッションテストは、システムの改修による意図しない影響を見つけるテストだから、リリース前だけでなく、ソースコードに変更が入るたびに実行したらどうだろう。デグレードを素早く発見できるに違いない。[lr]
_　その結果をすぐに開発者に報告できれば、バグ修正にかかる日数が短縮できるようになり、品質が安定するのではないか。[lr]
_　具体的に削減できる数字は出せないが、検討結果として提示しよう。[lr]

[cm]

@chara_show name="manager"
@playse storage="voice/scene_03_05/manager-03-05-01.ogg"
「なるほど。[lr]
@playse storage="voice/scene_03_05/manager-03-05-02.ogg"
_　これまではリリース前にならないとデグレードが確認できなかったものが、開発中に見つけられるということだね。[l][playse storage="voice/scene_03_05/manager-03-05-03.ogg"]デグレが修正されたあとの再テストも自動でできるから……評価コストは下がらないけど、内部失敗コストが削減できる、とも言えそうだな。[lr]
@playse storage="voice/scene_03_05/manager-03-05-04.ogg"
_　よし、では進めて」[lr]
_　内部失敗コスト……？　ああ、品質コストの一つで、リリース前に見つかる不具合に対応するコストだったか。すっかり忘れていた。自動化にはさまざまな効果があるなあ。[lr]
@chara_hide name="manager"
_　部長から工数の承認も得たし、実現に向けて準備を進めよう。[lr]
デグレードを素早く見つけるためには、どんなタイミングでテストを実行して、どうやってフィードバックするかが鍵になりそうだ。[lr]

*choice
[cm]
@restore

_　テスト自動化担当と関係者を呼んで、自動テスト構築について打ち合わせよう。アジェンダはこんなところか。[lr]
_　・自動テストの実行タイミング[r]
_　・自動テスト結果の通知方法[r]
_　・自動テストで使用する環境[lr]
_　ジャスペイチームはPMと開発者、テスト担当者がいるんだったな。インフラは基盤課が担当しているんだった。[lr]
_　さて、打ち合わせには誰を呼ぼうか。 [lr]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）テストのことなので、テスト担当者だけで話し合う。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）プロジェクト全体にかかわるので、テスト担当者の他にPMと開発者を呼ぶ。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）課はまたぐが、インフラ担当者も呼ぶ。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）テストのことなので、テスト担当者だけで話し合う。[resetfont][lr]
[r]
@fadeoutbgm
_　どういうテストをすればいいかは分かるが、上手くテストが実装できない。何とか作ったものの、実は開発側でも同じようなテストコードを書いていた。自分達のテストコードよりよっぽどしっかりしている。[lr]
_　テスト自動化には「テストを作る力」と「自動化する力」の二つが必要だったんだ。[lr]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　PMから勝手にテスト自動化を進めたことにも不信感を持たれ、テスト自動化の実装に暗雲が漂ってきた。[lr]

@badend storage="scene_03_05.ks"


*selectB
[cm]

[font color="0xffd700"]Ｂ）プロジェクト全体にかかわるので、テスト担当者の他にPMと開発者を呼ぶ。[resetfont][lr]
[r]
@fadeoutbgm
_　スケジュールもPMに相談し、開発と協力しながら、テストコードが動くところまでできた。よし、行けそうだ！　と思ったのも束の間、安定して動作する環境がないことに気がついた。[lr]
_　自動テストを安定して動かすハードウェアの納入には、半導体不足の影響で時間がかかるらしい。[lr]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　PMからは、これ以上のスケジュール調整はできないと言われた。今回は、テスト自動化を諦めるしかないのか……。[lr]

@badend storage="scene_03_05.ks"


*selectC
[cm]

[font color="0xffd700"]Ｃ）課はまたぐが、インフラ担当者も呼ぶ。[resetfont][lr]
[r]
@chara_show name="infra"
@playse storage="voice/scene_03_05/infra-03-05-01.ogg"
「システムテストの自動化用に専用環境を用意しましょうか」[lr]
@playse storage="voice/scene_03_05/infra-03-05-02.ogg"
「単体テストと結合テストの実行後に、自動化したリグレッションテストを実行するように設定しましょう」[lr]
[r]
_　話が早くて助かった。[lr]
_　こうして、組織全体で協力してテスト自動化を導入することに成功した。[lr]
_　リグレッションテストの回数を増やすことにより、デグレードが素早く検知できるようになった。[lr]
_　すでに開発者が構築していた自動テストと連携できたため、システムテスト自動化の導入後もスムーズに運用ができている。[lr]
@chara_hide name="infra"

[cm]

@chara_show name="manager"
@fadeoutbgm
@fadeinbgm storage="happy_end.ogg" time=1000
@playse storage="voice/scene_03_05/manager-03-05-05.ogg"
「ジャスペイ開発プロジェクトは、テストプロセスやテストサイクルが更にうまく回るようになったな。[l][playse storage="voice/scene_03_05/manager-03-05-06.ogg"]会社のモデルプロジェクトにするために、まだ課題は残っているかね」[lr]
[r]
_　なんだ。部長はコスト削減と言いながらも、社内のモデルプロジェクトを作りたかったのか。[lr]
_　それならそうと、最初から言ってくれればよかったのに。[lr]
_　今回は自動化できなかったテストケースもあるし、モデルプロジェクトにするにはもう少し時間がかかりそうだな。自動化したテストによって安定した品質が保てたら、ふるまい駆動開発にも挑戦してみたい。[lr]


@eval exp="sf.end03=true"
[happyend]
