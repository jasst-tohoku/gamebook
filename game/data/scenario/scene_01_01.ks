;プロジェクトマネージャ編1


*start
@chara_hide_all
@playbgm storage="scene.ogg"
[cm]

@chara_show name="main"
[font color="0xffd700"]Ａ）プロジェクトマネージャをすることになった。[resetfont][lr]
[r]
_　私はシステム開発部組込みシステム開発課でプロジェクトマネージャをすることになった。[lr]
_　これまで開発者としてのキャリアを積んできたが、プロジェクトマネージャをするのは初めてのことだ。[lr]
[r]
_　今回担当するのは、既にリリース済みのデバイスに搭載されるソフトウェアのメジャーバージョンアップだ。[lr]
_　既存の機能には大きな変更はないが、新たにいくつかの機能が載ることになっている。[lr]

[cm]

_　ある日、上司である部長が私を呼び出した。[lr]
[r]
@chara_show name="manager"
@playse storage="voice/scene_01_01/manager-01-01-01.ogg"
「君、今度のプロジェクトではテストを自動化して効率よく進めてくれたまえ。[lr]
@playse storage="voice/scene_01_01/manager-01-01-02.ogg"
_　いつもシステムテストに時間がかかり過ぎているし、もっと工夫できる点があるだろう。[lr]
@playse storage="voice/scene_01_01/manager-01-01-03.ogg"
_　それに、昨年の別製品ではメジャーバージョンアップ時にたくさんのデグレードが発生してユーザーの評判も悪かった。[lr]
@playse storage="voice/scene_01_01/manager-01-01-04.ogg"
_　今回は入念にリグレッションテストをしておいてほしい」[lr]
@chara_hide name="manager"

*choice
[cm]
@restore

@playse storage="voice/scene_01_01/main-01-01-01.ogg"
「システムテストの自動化だって？」[lr]
[r]
_　そんなものはこれまでの開発者人生の中で経験がなかった。[lr]
_　テストはほとんど外注先のテスターに任せていたので、自分では動作確認程度しかしてこなかった。[lr]
[r]
_　まして自動化となると……いったいどう始めるべきか。[lr]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）システムテスト自動化に関する専門的なスキルを持った担当者をアサインして進めよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）テストは外注しているんだし、外注先のテスターに対してそれぞれの担当部分の自動化を指示しよう。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）担当できる人はいなさそうだ、自分がプロジェクトマネージャーとテスト自動化担当者を兼任するしかないな。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
@jump storage="scene_01_02.ks" target="*start"
[s]

*selectB
[cm]

[font color="0xffd700"]Ｂ）テストは外注しているんだし、外注先のテスターに対してそれぞれの担当部分の自動化を指示しよう。[resetfont][lr]
[r]
_　テストの実施は専門の会社に任せている。[lr]
_　彼らに「自動化しておけよ」と言えばそれで充分ではないか。[lr]
_　早速先方の営業に連絡を入れておこう。[lr]

[cm]

@fadeoutbgm
_　システムテストを行う段階になって、メンバーが私のところに来た。[lr]
[r]
@playse storage="voice/scene_01_01/mob-01-01-01.ogg"
「PMさん、大変です！」[lr]
[r]
_　外注先のテスターに任せておいた自動テストが、全く機能していないらしい。[lr]
_　彼らにはテスト自動化の経験がなく、スコープや粒度がバラバラでまともに通しで動かない自動テストが積み上がっているようだ。[lr]
[r]
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
_　これから自動テストを直していたのでは間に合わない、今回も全て手動でなんとかするしかない……。[lr]
_　ああ、部長が見たことのないような顔でこちらに歩いてくるのが見える。[lr]

@badend storage="scene_01_01.ks"

*selectC
[cm]

[font color="0xffd700"]Ｃ）担当できる人はいなさそうだ、自分がプロジェクトマネージャーとテスト自動化担当者を兼任するしかないな。[resetfont][lr]
[r]
_　担当できる人がいない、ということは……。[lr]
_　ここは自分が兼任でテスト自動化担当をやるしかない。[lr]
[r]
_　私は腹をくくって、テスト自動化も行うことにした。[lr]

[cm]

@fadeoutbgm
_　プロジェクトマネジメントとテスト自動化担当、両立できると思っていたのだが……。[lr]
[r]
@playse storage="voice/scene_01_01/mob-01-01-02.ogg"
「PMさん、自動テストツールの使い方がよくわからなくて……」[lr]
@playse storage="voice/scene_01_01/mob-01-01-03.ogg"
「例の件どうなってます？」[lr]
@playse storage="voice/scene_01_01/mob-01-01-04.ogg"
「PM君、遅延が発生しているようだが大丈夫かね？」[lr]
[r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
_　プロジェクトが遅れているのをなんとかしなければならず、テスト自動化に割く時間がほとんど取れていない。[lr]
_　自動テストの実装も進まず、このままではテストも間に合わず予定通りのリリースができない可能性が高い……。[lr]

@badend storage="scene_01_01.ks"
