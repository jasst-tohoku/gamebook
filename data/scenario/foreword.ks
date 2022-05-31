*start

[cm]
[clearfix]

@chara_hide_all

;メッセージウィンドウの設定
@position layer="message0" left=90 top=5 width=1100 height=710 page=fore visible=true

;文字が表示される領域を調整
@position layer="message0" page="fore" margint=10 marginl=50 marginr=70 marginb=30

;背景を設定
@bg storage="bg_main.jpg" time=100

;メッセージウィンドウの表示
@layopt layer="message0" visible=true

[font size=45]まえがき[resetfont][l][r]
[r]
本資料は「JaSST’22 Tohoku」における自動テスト導入の流れをストーリー形式で学ぶワークショップ用資料をベースにしたノベルゲームです。[l][r]
[r]
ストーリーを読み進めながら、途中にある選択肢を選んで自動テスト導入を成功（HAPPY END）に導いてください。[l][r]
[r]
[font color="0xFF0000"]選択肢を誤るとBAD ENDになります。[resetfont][l][r]

[cm]

[font size=45]注意事項[resetfont][l][r]
[r]
選択肢の正解はJaSST’22 Tohoku実行委員が考える推奨のものとなります。実際の業務では状況によって何が正しいかは異なるのでご注意ください。[l][r]
[r]
このお話はフィクションであり、演出として極端な表現を使っている場合があります。[l][r]

[cm]

[font size=45]クレジット[resetfont][l][r]
[r]
◆ノベルゲーム開発ツール[r]
_　ティラノスクリプト[r]
_　https://tyrano.jp/[r]
[r]
◆シナリオ[r]
_　JaSST’22 Tohoku 実行委員会[l][r]

;タイトル画面へ移動
@jump storage="title.ks"

[s]
