;組込開発者編4


*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｂ）インターフェースの仕様が分かれば開発できる。機能が無い部分は、インターフェース部で入力に対して決まった答えを返すダミー処理を作成して、それを使ってテストする。[resetfont][l][r]
[r]
_　そういえば、テストダブル、という言葉を聞いたことがある。テスト対象が依存するコンポーネントの代替品という意味だったはずだ。[l][r]
_　自動テストのフレームワークを調べてみると、モックオブジェクト作成を支援する機能があり、それを使えばインターフェースの仕様さえ分かれば試作機や本番機が無くてもテストができそうだ。[l][r]
[r]
_　テストしやすいようにプログラムもインターフェースクラスを用意して実装してもらう必要がありそうだ。[l][r]
_　あとでチームを集めて実装方法を相談しておこう。[l][r]

[cm]

_　紆余曲折はあったが、テストの自動化の準備はできる限りやったはずだ。チームが自動化を進めることを前向きに考えてくれているのは本当に助かる。[l][r]
[r]
_　これでうまく行けばいいが、進めていく中で問題がでてくるだろう。チームで相談しながら修正しつつ進めることになると思うから、まだまだ気は抜けないかな。[l][r]
[r]
_　…………[l][r]
_　…………[l][r]
_　…………[l][r]

[cm]

@layopt layer="message0" visible=false
@layopt layer="message1" visible=true
@current layer="message1"
@layopt layer=1 visible=true
@chara_show name="manager"
「来週頭には試作機がくるけど、気になることはあるかな」[l][r]
[r]
_　おぉ、ついに試作機がくるか。[l][r]
_　当初の予定日に向けて用意した試作機のハードウェア不具合が多くて再作成していたらしい。[l][r]
_　計画のバッファをほとんど使って試作機が間に合ったのは良いが、本番機やリリースの計画は当初の予定と変わらないところは恐ろしい。[l][r]

[cm]

「本番機まで時間ないから、試作機のハードウェア不具合は最優先で確認してほしいみたい。できるかな？」[l][r]
[r]
_　できるかな？　じゃない。試作機が遅れたことで時間ができたから、試作機が来るまでにできることは全部やったはずだ。[l][r]
_　やってやる。[l][r]
@chara_hide name="manager"

[cm]

_　試作機用のプログラムも用意してある。[l][r]
_　ただし、試作機を使ったテストができていないので、実際に試作機を使ってのプログラム調整が必要になるはずだ。[l][r]
_　プログラムを試作機上で動作させるためには評価環境よりも手順が多くて１時間くらいかかりそうだが、その作業や試作機テストはQA部門が中心にやってくれる。[l][r]

*choice
[cm]
@bg storage="bg_main.jpg" time=100
@chara_mod name="main" face="default"
@layopt layer="message1" visible=true
@current layer="message1"
@layopt layer=1 visible=true
@playbgm storage="scene.ogg" cond="tf.fromEnd==true"
@eval exp="tf.fromEnd=false"

_　開発環境や評価環境での従来の自動テスト資産は十分にある。[l][r]
_　これらをどうやって活かそうか。[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）本番に近い環境でテストしたほうが良い。今後は試作機テストに注力して、従来のテストは行わずに工数を削減する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）これまでのテスト資産も活用しよう。従来のテストを行いつつ、試作機テストも適度に実行する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）これまで上手くやってきた方法を変える必要はない。従来通りのテストを行い、試作機テストを行わない。[endlink][resetfont][r]
[endnowait]
[s]


*selectA
@layopt layer=1 visible=false
@layopt layer="message1" visible=false
@layopt layer="message0" visible=true
@current layer="message0"

[cm]

[font color="0xffd700"]Ａ）本番に近い環境でテストしたほうが良い。今後は試作機テストに注力して、従来のテストは行わずに工数を削減する。[resetfont][l][r]
[r]
_　試作機は現時点で本番機に最も近い。[l][r]
_　PRJ初期ならともかく、いまは試作機テストに全力を注ぐべきだろう。[l][r]
_　ここまで支えてくれた開発環境や評価環境でのテストはお役御免になる。これまでありがとう、と心の中で感謝を伝えておく。[l][r]
_　さぁ、忙しくなるぞ。[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
「ロジックのミスは無いと思ってますが、そういわれると自信が無いなぁ。コード見返してみますね」[l][r]
[r]
_　試作機テストの不具合調査をチームで行っているが、歯切れのよい結論が出てこない。[l][r]
_　これまで試作機で出てきた不具合には、ハードウェア仕様をこちらで把握しきれていなかったり、ハードウェアが原因だったりしたが、先日はソフトウェアの単純なロジックミスもあったりした。そのときはハードウェア部門から苦言を聞いたっけ。[l][r]
@chara_mod name="main" face="down"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"

_　試作機テストの不具合調査がこんなに難しいのは想定し切れていなかった。これでは本番機までに不具合を挙げきるのは無理そうだ。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]


*selectB
@layopt layer=1 visible=false
@layopt layer="message1" visible=false
@layopt layer="message0" visible=true
@current layer="message0"
@jump storage=scene_02_05.ks target=*start
[s]


*selectC
@layopt layer=1 visible=false
@layopt layer="message1" visible=false
@layopt layer="message0" visible=true
@current layer="message0"

[cm]

[font color="0xffd700"]Ｃ）これまで上手くやってきた方法を変える必要はない。従来通りのテストを行い、試作機テストを行わない。[resetfont][l][r]
[r]
_　いや、試作機がきたからといってこれまで上手くいっていたじゃないか。[l][r]
_　モックオブジェクトを使うことで、デバイスを扱う部分もテストを含めて実装できている。[l][r]
_　なにより、試作機を使うよりも早くテストできるじゃないか。このリズムを崩す必要はないだろう。試作機も余るから、他の部門で使うところがないか部長に聞いてもらおう。[l][r]
[r]
_　…………[l][r]

[cm]

@fadeoutbgm
「って感じですけど、何か質問ありますか？」[l][r]
[r]
@chara_show name="qa"
_　……返す言葉はなにもない。[l][r]
_　試作機の受け入れテストでわたしのチームの担当範囲で不具合が多発して、まともにテストができないとQA部門から指摘された。[l][r]
_　試作機でしか動かない機能の部分で軒並み不具合が発生していた。[l][r]
[r]
「試作機を返されたみたいなので、何か策があるのかと思ったんですが。こちらもその時点で詳しく話を聞くべきでした」[l][r]
[r]
_　……何をいっても言い訳になってしまいそうだ。[l][r]

[cm]

「試作機で全体の動作確認ができていないので、この状態で本番機作成に移るのはリスクが大きいとPMに伝えておきますね。[l][r]
_　みなさんは試作機が動かせることを最優先でお願いします」[l][r]
[r]
@chara_hide name="qa"
@chara_mod name="main" face="orz"
@playbgm storage="bad_end.ogg"
@eval exp="tf.fromEnd=true"

_　その試作機だって予定通りに来なかったじゃないか。と言いたくなったが、場の空気が悪くなるだけだと思ったのでグッと堪えた。泣きたくなる気持ちを抑えて頷くだけだった。[l][r]

[cm]

@layopt layer="message0" visible=false
@bg storage="bad_end.jpg" time=2000 method="fadeIn"
[l]
@button x=500 y=400 graphic="button/back_to_choice_off.gif" enterimg="button/back_to_choice_on.gif" target="choice"
@button x=500 y=500 graphic="button/back_to_title_off.gif" enterimg="button/back_to_title_on.gif" target="goToTitle"
[s]
