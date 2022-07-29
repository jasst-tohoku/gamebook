*start

[cm]
[clearfix]

@chara_hide_all

;メッセージウィンドウの設定
@position layer="message0" left=90 top=5 width=1100 height=710 page=fore visible=true

;文字が表示される領域を調整
@position layer="message0" page="fore" margint=10 marginl=50 marginr=70 marginb=30

;背景を設定
@bg storage="white.jpg" time=500
@bg storage="bg_main.jpg" time=500


;メッセージウィンドウの表示
@layopt layer="message0" visible=true

[font size=45]まえがき[resetfont][lr]
[r]
本ゲームは「JaSST’22 Tohoku」における自動テスト導入の流れをストーリー形式で学ぶワークショップ用資料をベースにしたノベルゲームです。[lr]
[r]
ストーリーを読み進めながら、途中にある選択肢を選んで自動テスト導入を成功（HAPPY END）に導いてください。[lr]
[r]
[font color="0xFF0000"]選択肢を誤るとBAD ENDになります。[resetfont][lr]

[cm]

[font size=45]注意事項[resetfont][lr]
[r]
選択肢の正解はJaSST’22 Tohoku実行委員が考える推奨のものとなります。実際の業務では状況によって何が正しいかは異なるのでご注意ください。[lr]
[r]
このお話はフィクションであり、演出として極端な表現を使っている場合があります。[lr]

[cm]

[nowait]
[font size=45]クレジット[resetfont][r]
[r]
◆ノベルゲーム開発ツール[r]
_　ティラノスクリプト[r]
_　https://tyrano.jp/[r]
[r]
◆BGM[r]
_　DOVA-SYNDROME[r]
_　https://dova-s.jp/[r]
[r]
◆効果音[r]
_　魔王魂[r]
_　https://maou.audio/[lr]

[cm]

[font size=45]クレジット[resetfont][r]
[r]
◆ボイス[r]
_　VOICEPEAK[r]
_　https://www.ah-soft.com/voice/6nare/[r]
[r]
◆ゲーム演出・スクリプト[r]
_　kishiken[r]
[r]
◆シナリオ・解説・背景・人物シルエット[r]
_　JaSST’22 Tohoku 実行委員会[lr]
[endnowait]

;タイトル画面へ移動
@jump storage="title.ks"

[s]
