;経営管理者編解説

*start

[cm]

*choice1
[cm]
[nowait]
@chara_show name="main"

_　さて、どのテストを自動化しよう。[r]
[r]
[font color="0xffd700"]Ａ）新しく開発した機能のテストは優先度も高く、テストに時間がかかっている。追加機能のテストを自動化する。[resetfont][r]
[font color="0xffd700"]Ｂ）システムを機械的に探索すれば、探索的テストの工数はかからなくなる。探索的テストを自動化する。[resetfont][r]
[font color="0xffd700"]Ｃ）リグレッションテストの内容はほぼ同じなのに、毎回テスト実行に時間がかかっている。リグレッションテストを自動化する。[resetfont][r]
[font color="0xffd700"]Ｄ）どのテストかは関係ない。すべてのテストを自動化する。[resetfont][r]
[endnowait]
@button x=500 y=605 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer1"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
@button x=800 y=635 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice2"
[s]


*answer1
[cm]

@chara_hide_all
[nowait]
＜解説＞[r]
テストを自動化するにあたり、以下のような制限があります。[r]
・すべての手動テストを自動化できない[r]
・自動化によってチェックできるのは、ツールが解釈できる結果のみ[r]
・自動化によってチェックできるのは、あらかじめ定義された期待結果によって検証可能な実行結果だけである[r]
・探索的テストを自動化に置き換えることはできない[r]
また、『テスト技術者資格制度Advanced Level シラバス テスト自動化エンジニア』の6.2.4では「回帰テストは、自動化を使用する絶好の機会である。」と明記されており、回帰テストを自動化するときに必要な手順も詳細に記載されています。[r]
（引用：テスト技術者資格制度Advanced Level シラバス テスト自動化エンジニア）[r]
[endnowait]
@button x=500 y=605 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice1"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice2
[cm]
[nowait]
@chara_show name="main"

_　改めて、リグレッションテストのテストケースを見せてもらった。[r]
_　全部で200ケース、内容は「データが登録できること」といった機能に関することや、「画面に崩れがないこと」といった表示に関するものが含まれている。[r]
_　さて、どのくらい自動化しよう。[r]
[r]
[font color="0xffd700"]Ａ）手動テストを無くさないと効果が薄い。リグレッションテストをすべて自動化する。[resetfont][r]
[font color="0xffd700"]Ｂ）できる範囲を見極めて、早く効果を出したい。できるところを自動化する。[resetfont][r]
[endnowait]
@button x=200 y=635 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice1"
@button x=500 y=605 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer2"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
@button x=800 y=635 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice3"
[s]


*answer2
[cm]

@chara_hide_all
[nowait]
＜解説＞[r]
テスト自動化の制限には「自動化によってチェックできるのは、あらかじめ定義された期待結果によって検証可能な実行結果だけ」というものがあります。[r]
データが登録できることの確認は、登録後のデータ（テキスト）が表示されるかどうかで判断することができます。一方、表示崩れの確認に対し、崩れていないという期待結果をあらかじめ定義するのは容易ではありません。システムの更新内容にUIの変更がない場合は、更新前の画面を期待値としたビジュアルリグレッションテストの手法を活用できるかもしれませんが、UIに更新が入る場合には自動でテストするのは難しくなります。[r]
いずれにせよ、自動化を始める前にテストケースを一度確認して、自動化の制限に引っかかるものがないかどうか、確認しておきましょう。[r]
（引用：テスト技術者資格制度Advanced Level シラバス テスト自動化エンジニア）[r]
[endnowait]
@button x=500 y=605 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice2"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice3
[cm]
[nowait]
@chara_show name="main"
「システムテストを自動化するんだね。自動テストが構築できたら手動テストの工数はゼロになるよね。初期構築には工数がかかると思うが、当面は手動テストと同じだけかかると想定していればいいかな？」[r]
_　部長は年次の工数計画を確認している。[r]
_　なんの工数を計上してもらおうか。[r]
[r]
[font color="0xffd700"]Ａ）部長の言う通りの工数を計上してもらう。[resetfont][r]
[font color="0xffd700"]Ｂ）自動テストの実装工数を計算しなおして計上してもらう。[resetfont][r]
[font color="0xffd700"]Ｃ）自動テストの実装工数のほかに、保守や運用の工数も計上してもらう。[resetfont][r]
[endnowait]
@button x=200 y=635 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice2"
@button x=500 y=605 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer3"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
@button x=800 y=635 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice4"
[s]


*answer3
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
テスト自動化には、初期コストだけではなく固定費もかかります。[lr]
[cm]
初期コスト[r]
・目的と目標を満たすためのツール要件の定義[r]
・適切なツールとツールベンダーの評価および選択[r]
・ツールの購入、適用、または開発[r]
・ツールの初期トレーニングの実行[r]
・他のツールとの統合[r]
・ツールをサポートするために必要なハードウェア／ソフトウェアの購入[lr]
[cm]
固定費[r]
・ツール所有コスト[r]
・ライセンス料金およびサポート料金[r]
・ツール自体のメンテナンスコスト[r]
・ツールにより作成された成果物のメンテナンス[r]
・継続的なトレーニングおよびメンタリングのコスト[r]
・別の環境へのツールの移植[r]
・将来のニーズへのツールの適用[r]
・選択したツールを最適に使用できるようにするための品質とプロセスの改善[r]
（引用：テスト技術者資格制度Advanced Level シラバス 日本語版 テストマネージャ）[r]
[endnowait]
@button x=500 y=605 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice3"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice4
[cm]
[nowait]
@chara_show name="main"

手動テストの実施工数：20時間[r]
テスト自動化実装工数：160時間[r]
自動テスト実行工数　：4時間/回[r]
テストの実施頻度　　：3か月に1回[r]
_　整理するとこんな感じか……そもそも採算をとるのに10回、2年半もかかるとは……。[r]
_　部長にどう報告しようか……[r]
[r]
[font color="0xffd700"]Ａ）工数削減に2年半以上かかるのは事実なので、部長にこのまま報告する。[resetfont][r]
[font color="0xffd700"]Ｂ）工数削減の効果が出るのに時間がかかるので、別の効果がないか検討する。[resetfont][r]
[font color="0xffd700"]Ｃ）工数削減の効果が出るのに時間がかかるので、自動化は取りやめる報告をする。[resetfont][r]
[endnowait]
@button x=200 y=635 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice3"
@button x=500 y=605 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer4"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
@button x=800 y=635 graphic="button/go_to_next_choice_off.gif" enterimg="button/go_to_next_choice_on.gif" target="choice5"
[s]


*answer4
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
“テスト自動化の効用はコスト削減だけではない”[r]
もし、テスト自動化によってなんらかのコストが削減できるとしたら、十分に成熟しているテストケースが既に存在しており、そのテストは今後何度も実行される予定があり、自動テストの開発を円滑に進めるための準備が完了している場合と、テストの手順が同じで、テストすべきデータが膨大に存在する場合の「テスト実行」のコストである。[r]
テスト自動化には、繰り返し型開発におけるセーフティネットとしての役割や、バグ修正日数の低減、影響範囲レビュープロセスの代替、といった、開発アクティビティへの効用も存在するため、冒頭にあげたひどく限定された局面を狙うより勝ち目があるかもしれない。[r]
（引用：テスト自動化研究会 テスト自動化の8原則）[r]
[endnowait]
@button x=500 y=605 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice4"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*choice5
[cm]
[nowait]
@chara_show name="main"

_　テスト自動化担当と関係者を呼んで、自動テスト構築について打ち合わせよう。アジェンダはこんなところか。[r]
_　・自動テストの実行タイミング[r]
_　・自動テスト結果の通知方法[r]
_　・自動テストで使用する環境[r]
_　ジャスペイチームはPMと開発者、テスト担当者がいるんだったな。インフラは基盤課が担当しているんだった。[r]
_　さて、打ち合わせには誰を呼ぼうか。 [r]
[r]
[font color="0xffd700"]Ａ）テストのことなので、テスト担当者だけで話し合う。[resetfont][r]
[font color="0xffd700"]Ｂ）プロジェクト全体にかかわるので、テスト担当者の他にPMと開発者を呼ぶ。[resetfont][r]
[font color="0xffd700"]Ｃ）課はまたぐが、インフラ担当者も呼ぶ。[resetfont][r]
[endnowait]
@button x=200 y=635 graphic="button/go_to_prev_choice_off.gif" enterimg="button/go_to_prev_choice_on.gif" target="choice4"
@button x=500 y=605 graphic="button/go_to_commentary_off.gif" enterimg="button/go_to_commentary_on.gif" target="answer5"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*answer5
[cm]
[nowait]
@chara_hide_all

＜解説＞[r]
テスト自動化と対象ソフトウェアの技術やプロセスは親和性を高める必要があります。ソフトウェア品質に関するフィードバックを迅速におこなうためには、ソフトウェア開発に携わる開発者やインフラ担当者の協力が不可欠です。チームの親和性があると、お互いの要件や設計および開発の成果物のレビュー、問題についての議論、互換性のあるソリューションの発見お互いのコミュニケーションや対話の際にも役立ちます。[r]
（引用：テスト技術者資格制度Advanced Level シラバス テスト自動化エンジニア）[r]
[endnowait]
@button x=500 y=605 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice5"
@button x=500 y=660 graphic="button/back_to_index_off.gif" enterimg="button/back_to_index_on.gif" target="commentary"
[s]


*commentary
@jump storage="commentary.ks"
[s]

