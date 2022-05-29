;組織管理者編4

*goToTitle
@jump storage=title.ks


*start

[cm]

[font color="0xffd700"]Ｃ）自動テストの実装工数のほかに、保守や運用の工数も計上してもらう。[resetfont][l][r]
[r]
@chara_show name="manager"
「え、そんなにかかるの？　その結果、どれぐらい効果が出るの？」[l][r]
[r]
_　部長は想像を超えた工数に驚いた様子だ。[l][r]
_　正確な情報を提示するため、少し時間をもらい、テスト自動化担当に確認をお願いした。[l][r]
@chara_hide name="manager"

[cm]

@chara_show name="leader"
「テスト自動化にかかる工数と、それで減らせるテスト工数を調べればいいんですね。承知しました。[l][r]
_　これまでテストを実施していた担当者にも確認して、明日、ご報告いたします」[l][r]
[r]
——翌日——[l][r]
[r]
「昨日相談いただいた工数の件ですが、対象のテストケースは手で実行するのに20時間かかっていたことが分かりました。[l][r]
_　テストを自動化するのに160時間、１回のテスト実行と保守に４時間かかる見込みです。リグレッションテストは本番リリース前の３か月に１回実施しているので、11回実施すればテスト工数が16時間減らせます」[l][r]
@chara_hide name="leader"

*choice
[cm]
@chara_mod name="main" face="default"

手動テストの実施工数：20時間[r]
テスト自動化実装工数：160時間[r]
自動テスト実行工数　：4時間/回[r]
テストの実施頻度　　：3か月に1回[l][r]

_　整理するとこんな感じか……そもそも採算をとるのに10回、2年半もかかるとは……。[l][r]
_　部長にどう報告しようか……[l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*selectA"]Ａ）工数削減に2年半以上かかるのは事実なので、部長にこのまま報告する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectB"]Ｂ）工数削減の効果が出るのに時間がかかるので、別の効果がないか検討する。[endlink][resetfont][r]
[font color="0xffd700"][link target="*selectC"]Ｃ）工数削減の効果が出るのに時間がかかるので、自動化は取りやめる報告をする。[endlink][resetfont][r]
[endnowait]
[s]

*selectA
[cm]

[font color="0xffd700"]Ａ）工数削減に2年半以上かかるのは事実なので、部長にこのまま報告する。[resetfont][l][r]
[r]
_　現状の費用対効果だけでは部長は納得しなかった。[l][r]
_　工数削減以外にも様々な効果があったのに、そこを考える必要があったのだ。そもそもリグレッションテストだって、リリース前だけじゃなくて、コミット毎に実施してもいいじゃないか！[l][r]
@chara_mod name="main" face="orz"
_　気付いたときには時すでに遅し。[l][r]
_　部長は自動化に悪いイメージを持ってしまって、説得が難しくなってしまった。[l][r]

[cm]

[font color="0xff0000" bold=true]BAD END[resetfont][l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*choice"]選択肢へ戻る[endlink][resetfont][r]
[font color="0xffd700"][link target="*goToTitle"]タイトルへ戻る[endlink][resetfont]
[endnowait]
[s]

*selectB
@jump storage="scene_04_05.ks" target="start"
[s]


*selectC
[cm]

[font color="0xffd700"]Ｃ）工数削減の効果が出るのに時間がかかるので、自動化は取りやめる報告をする。[resetfont][l][r]
[r]
_　いつまで経っても自動化は進まない。もちろんスキルも上がらない。[l][r]
@chara_mod name="main" face="down"
_　新しいブランチができるたびにリグレッションテストの回数は増えていく。[l][r]

[cm]

[font color="0xff0000" bold=true]BAD END[resetfont][l][r]
[r]
[nowait]
[font color="0xffd700"][link target="*choice"]選択肢へ戻る[endlink][resetfont][r]
[font color="0xffd700"][link target="*goToTitle"]タイトルへ戻る[endlink][resetfont]
[endnowait]
[s]
