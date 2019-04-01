;ティラノスクリプトサンプルゲーム

*start

[if exp="sf.vtuber==undefined"]
[eval exp="sf.vtuber=false"]
[endif]
[if exp="sf.library==undefined"]
[eval exp="sf.library=false"]
[endif]

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="bg_school_room2.jpg" time="100"]

;メニューボタンの表示
; @showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]
;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=410]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;bakeo
; [chara_new  name="bakeo" storage="chara/bakeo/normal.png" jname="あかね"  ]
[chara_new name="bakeo" storage="chara/bakeo/front.png" jname="ばけお"]
;キャラクターの表情登録
[chara_face name="bakeo" face="front" storage="chara/bakeo/front.png"]
[chara_face name="bakeo" face="right" storage="chara/bakeo/right.png"]
[chara_face name="bakeo" face="left" storage="chara/bakeo/left.png"]
[chara_face name="bakeo" face="back" storage="chara/bakeo/back.png"]
[chara_face name="bakeo" face="faceosc" storage="chara/bakeo/faceosc.png"]

;スキップ
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x=35 y=610]
;オート
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=110 y=610]
;セーブ
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=185 y=610]
;ロード
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=260 y=610]
;クイックセーブ
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x=335 y=610]
;クイックロード
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x=410 y=610]
;タイトルに戻る
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=860 y=610]
;バックログ
;[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x=485 y=610]
;メッセージウィンドウ非表示
;[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x=560 y=610]
;フルスクリーン切替
;[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x=635 y=610]
;メニュー呼び出し（※ロールボタンを使うなら不要）
;[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x=710 y=610]
;コンフィグ（※sleepgame を使用して config.ks を呼び出しています）
;[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" x=785 y=610 storage="config.ks"]


;yamato

#
……[p]
2019年2月20日[p]
新宿某所[p]

;キャラクター登場
[chara_show  name="bakeo"]
#?
みなさん、こんにちは。[p]
僕の名前は [font bold=true]ばけお[resetfont]だよ。[p]
#ばけお
hico00さんによって作られたおばけだよ。[p]
最近、スライドを作ることに飽きてしまった、[r]という理由で遠藤の代わりに発表させられているよ。[p]
ちなみに、[font bold=true]ばけお[resetfont]って名前は、[r]
遠藤に勝手につけられた名前だよ。[p]
そんな訳で、いきなり本題に入るよ。[p]

*first-select
君たちはVTuberになりたい？[r]
それともPHPライブラリ開発を始めたい？[p]

[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="100" text="PHPerでもVTuberになりたい！" storage="vtuber.ks"]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="170" text="PHPでライブラリ開発を始めたい！" storage="library.ks"]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="260"  width="400"  y="240" text="なにもしたくない" target="loop"]
[s]

*loop

#ばけお
……[p]
……[p]
[jump target=*first-select]

*end

#ばけお
どうだったかな？[p]
こんな感じで発表を終わるよ。[l]
またね。[p]

[cm]
@chara_hide_all
@clearfix
@clearstack
@layopt layer=message0 visible=false
@freeimage layer="base"
[movie storage="ending.webm" skip="true"]
[jump storage=title.ks target="*start"]