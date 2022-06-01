;プロジェクトマネージャ編解説

*start

[cm]

*choice1
[cm]
[nowait]
@chara_show name="main"
@chara_mod name="main" face="default"

_　システムテストの自動化だって？[r]
_　そんなものはこれまでの開発者人生の中で経験がなかった。[r]
_　テストはほとんど外注先のテスターに任せていたので、自分では動作確認程度しかしてこなかった。[r]
[r]
_　まして自動化となると……いったいどう始めるべきか。[r]
[r]
[font color="0xffd700"]Ａ）システムテスト自動化に関する専門的なスキルを持った担当者をアサインして進めよう。[resetfont][r]
[font color="0xffd700"]Ｂ）テストは外注しているんだし、外注先のテスターに対してそれぞれの担当部分の自動化を指示しよう。[resetfont][r]
[font color="0xffd700"]Ｃ）担当できる人はいなさそうだ、自分がプロジェクトマネージャーとテスト自動化担当者を兼任するしかないな。[resetfont][r]
[endnowait]
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer1"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice2"
[s]

*answer1
[cm]

@chara_hide_all
[nowait]
＜解説＞[r]
テスト自動化エンジニア（TAE）は、テスト自動化および自動テストシステムの構築、その保守や技術改善などに責任を持つ役割です。[r]
各テスターに任せたり、経験がない状態でのPM兼任では、テスト自動化の導入に失敗するリスクが高くなります。[r]
特にテスト自動化の導入時には、プログラミングやテスト、プロジェクト管理のスキルを持った方が専任として担当することが大切です。[r]
（参考：テスト技術者資格制度 Advanced Level シラバス テスト自動化エンジニア）[r]
[r]
“テスト自動化の作業をサブプロジェクトにして，片手間で片付けようとするような真似はしないことが肝心である。”[r]
（引用：書籍『ソフトウェアテスト293の鉄則』鉄則120）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice1"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice2
@layopt layer=2 visible=false
[nowait]
[cm]
@chara_show name="main"
@chara_mod name="main" face="default"

_　面倒なことになったが、ここはマネージャとしてビシッと決めねば。[r]
[r]
_　どちらのツールを採用しようか。[r]
[r]
[font color="0xffd700"]Ａ）安価に使えるツールであれば導入もしやすいはず。部長からの指示があったツールを導入しよう。[resetfont][r]
[font color="0xffd700"]Ｂ）担当であるエンジニアが一番よく理解しているはず。部長には断りを入れて、テストリーダーが選んだツールを導入しよう。[resetfont][r]
[font color="0xffd700"]Ｃ）どちらも机上で検討をしているだけで、実際に試してみていない。両方のツールを、まずはトライアル（パイロット）として一定期間試用してから判断だ。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice1"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer2"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice3"
[s]

*answer2
[cm]

@chara_hide_all
[nowait]
＜解説＞[r]
テスト自動化ツールを選定する際には、パイロットやPoCと呼ばれるトライアルを経て行う必要があります。[r]
行わなかった場合、テスト対象に対して自動化ツールやシステムの相性が悪く自動化できない、期待する効果が出ない、といったリスクがあります。[r]
安価だから、別プロジェクトで使用実績があるから、などの理由で実際に試用せずにツールの選定を行うのは危険です。[r]
[r]
（参考：テスト技術者資格制度 Advanced Level シラバス テスト自動化エンジニアTest Automation Patterns Wiki “DO A PILOT”の項）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice2"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice3
[nowait]
[cm]
@chara_show name="main"
@chara_mod name="main" face="default"

_　２週間後、テストリーダーからトライアルの報告があった。[r]
_　概要は以下のようなものだった。どちらのツールを使おうか。[r]
[r]
@image layer=2 storage=table_01.png visible=true top=170 left=150
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[r]
[font color="0xffd700"]Ａ）部長が薦めてきたツール[resetfont][r]
[font color="0xffd700"]Ｂ）テストリーダーが検討していたツール[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice2"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer3"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice4A"
[s]


*answer3
@layopt layer=2 visible=false
[cm]
@chara_hide_all
[nowait]
＜解説＞[r]
テスト自動化ツールを選定する際に考慮すべきポイントはプロジェクトによって異なります。[r]
今回のストーリーではいずれのツールも選択の余地があり、PMやテストリーダーなど、各ステークホルダーが何を重視するかによって選ぶツールが変わります。[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice3"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice4A
@layopt layer=2 visible=false
[nowait]
[cm]
@chara_show name="main"
@chara_mod name="main" face="default"

_　話を聞いてみると、テスト自動化が容易であるがゆえに、自動テストケースが増えすぎて困っているらしい。[r]
_　特に、似たような手順でデータのパターンが異なる自動テストが大量にできてしまい、自動テストの管理や実行結果の確認の手間が増えているそうだ。[r]
_　さて、どう対応しようか。[r]
[r]
[font color=0xffd700]Ａ）きっとツールに問題があったんだ。テストリーダーが検討していたツールに乗り換えよう。[resetfont][r]
[font color=0xffd700]Ｂ）データ駆動など、自動テストの実装や保守の負担を軽減する可能性がある技法を取り入れてみよう。[resetfont][r]
[font color=0xffd700]Ｃ）テスターチームに要員を投入して、マンパワーで全て解決するぞ！[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice3"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer4A"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice4B"
[s]


*answer4A
[cm]
@chara_hide_all
[nowait]
＜解説＞[r]
自動化が容易であるということと、テスト自動化の知見が不要であることとは別です。[r]
効果的なテスト自動化のためには、一定の知見・理解が必要です。[r]
ツール選定のやりなおしや、マンパワーによる自動化で状況が改善する場合もありますが、手戻りが多く発生します。[r]
まずはテスト自動化に関する技法を取り入れ、効率化を図るのが第一優先です。[r]
“テスト変数の多さに閉口したときは、データ駆動型自動テストを使え”[r]
[r]
（引用：書籍『ソフトウェアテスト293の鉄則』鉄則127）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice4A"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice4B
[cm]
[nowait]
@chara_show name="main"
@chara_mod name="main" face="default"

_　その後、順調にテスト自動化が進んでいるように見えたものの……。[r]
[r]
「PMさん、ちょっといいですか？　実は困ったことになってまして……」[r]
[r]
_　テストリーダーが話しかけてきた。悪い予感がする。[r]
_　話を聞いてみると、テスターチームが自動化に不慣れで、実装が思うように進んでいないらしい。[r]
_　このままではプロジェクトの進行にも影響が出てしまう。[r]
_　どう対応しようか。[r]
[r]
[font color=0xffd700]Ａ）諦めて全て手動で実行する。[resetfont][r]
[font color=0xffd700]Ｂ）開発者に、代わりに自動テストを書いてもらう。[resetfont][r]
[font color=0xffd700]Ｃ）メンバー同士相互のコードレビューや、開発者によるコードレビュー、ペアプログラミングを行う。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice4A"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer4B"
@button x=800 y=630 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice5"
[s]


*answer4B
[cm]
@chara_hide_all
[nowait]
＜解説＞[r]
コードベースの自動化を行う場合、書いたテストの質が問われる場面があります。[r]
コードレビューは有効な手段のひとつとされています。[r]
特に普段プログラミングに慣れていないテストエンジニアがテスト自動化を行う場合、レビューを通じて相互にスキルアップをはかることができます。[r]
また、開発者にコードレビューに参加してもらうことで、開発者がシステムテストの内容や考え方を理解する機会にもなります。[r]
“自動化テスト環境の開発にはレビューを活用せよ”[r]
[r]
（引用：書籍『ソフトウェアテスト293の鉄則』鉄則123）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice4B"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice5
[nowait]
[cm]
@chara_show name="main"
@chara_mod name="main" face="default"

_　そしてある日……私は部長に呼び出された。[r]
_　“お褒めのことば”でもくれるのだろうか。[r]
_　どうせくれるなら、臨時ボーナスでも貰いたいところだ。[r]
[r]
「テスト自動化の導入を無事行うことができたようだな。[r]
_　テストカバレッジも増えたし、これでつまらんデグレが防げるだろう。よくやってくれた。[r]
_　ところでテストチームについてだが、自動化できたわけだし、縮小してもかまわないな？　テストリーダーの彼も、別の業務にアサインしたいと思っていてね」[r]
[r]
[font color="0xffd700"]Ａ）そうですね、これで人件費も削減でき、ハッピーです。[resetfont][r]
[font color="0xffd700"]Ｂ）自動テストがある限り、保守運用は続きます。専任担当者は継続して必要です。[resetfont][r]
[endnowait]
@button x=200 y=630 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice4B"
@button x=500 y=630 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer5"
[s]


*answer5
[cm]
@chara_hide_all
[nowait]
＜解説＞[r]
テスト自動化は、あるところまで自動化したら完了、ではありません。[r]
作成した自動テストのメンテナンスを継続的に行う必要があります。[r]
自動化したからといって担当者を外したり、チーム内で都度手が空いている人がやることにしたりすると、メンテナンスが行われなくなって自動テストが使われなくなっていきます。[r]
“テストセットの操作やメンテナンスを行うには，特別なスキルと知識が必要になる。自動化されたテストの担当者が異動になれば，テストセットに関する重要な知識もそれと一緒に消えうせてしまうことが多い。”[r]
[r]
（引用：書籍『ソフトウェアテスト293の鉄則』鉄則117）[r]
[endnowait]
@button x=500 y=630 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice5"
@button x=800 y=630 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]

*commentary
@jump storage="commentary.ks"
[s]
