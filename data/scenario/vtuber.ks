#ばけお
そっか、君たちはPHPerでありながら、VTuberになることを望むんだね。[l][r]

[chara_hide name="bakeo" ]
[bg storage="vtuber-title.png" time="100"]

#ばけお
それじゃ、PHPerのためのVTuber講座をはじめるよ。[p]

[bg storage="vtuber-list.png" time="100"]

#ばけお
今日使う技術はこんな感じだよ。[p]
#
・FaceOSC[r]
・php-osc[r]
・phpsdl[p]

; *** FaceOSC ***
#ばけお
まずは、[font bold=true]FaceOSC[resetfont]について説明するよ。[l][r]
何回か社内勉強会では喋ってると思うけど、[r]
一応説明するね。[p]

[bg storage="faceosc.jpg" time="100"]

#ばけお
FaceOSCは顔を検出するアプリケーションだよ。[r]
Kyle Mcdnaldっていうメディアアーティストが開発しているんだ。[p]
検出した顔の情報はOSCっていうプロトコルで送信されるよ。[r]
OSCについては、次のphp-oscと一緒に説明するね。[p]
きっとこのタイミングで、[r]
発表者が実際にFaceOSCを動かしてくれるよ。[p]

[bg storage="demo.png" time="100"]

#
デモをどうぞ[p]

[chara_show name="bakeo"]

#ばけお
FaceOSCはこんな感じだよ。[l][r]

; [chara_show name="bakeo" face="back"]
;
; ちなみに……[p]
;
; [chara_show name="bakeo" face="faceosc"]
;
; # ばけお
; 僕が使うとこんな感じだよ[p]

; *** php-osc ***
; [chara_show name="bakeo" face="back"]

; #
; [p]

[bg storage="vtuber-list.png" time="100"]
[chara_show name="bakeo" face="front"]

# ばけお
次は、[font bold=true]php-osc[resetfont]について説明するよ。[l][r]
php-oscはPHPでOSCを受信するためのライブラリだよ。[r]
これを使ってFaceOSCから送られてくる情報をPHPで受信するんだ。[p]
実はphp-oscを作ったのは遠藤だよ。[l][r]
まだ、受信機能しか実装してないけど、[r]
そのうち気が向いたら送信機能も実装する予定だよ。[p]
そしてphp-oscって名前も、[r]
他のライブラリと被っちゃてたから変わるかもしれないよ。[p]
OSCはOpenSound Controlの略だよ。[r]
名前の通り、PCや電子楽器等が通信するためのプロトコルなんだ。[r]
主にUDP上で転送されるよ。[p]
もともとMIDIっていうプロトコルが主流だったんだけど、[r]
その代替として開発されたんだ。[p]
OSCはそんな経緯で開発されたんだけど、[r]
その汎用性の高さから、[r]
音楽関係以外にもメディアアート方面でよく使われるよ。[p]
ここでせっかくだから少しOSCの内容を説明するよ。[p]

OSCのデータはこんな感じだよ。[p]
2362756e646c65000000000000000001000000102f666f756e6400002c69000000000001[p]
よくわからないね。[p]
OSCはデータを4byteで区切ってあるんだ。[l][r]
4byteで区切ってみるよ。[p]

2362756e[r]
646c6500[r]
00000000[r]
00000001[r]
00000010[r]
2f666f75[r]
6e640000[r]
2c690000[r]
00000001[p]

ちなみにOSCで使われる基礎データ型はこんな感じだよ。[p]
・int32[r]
・OSC-timetag[r]
・float32[r]
・OSC文字列 (OSC-string)[r]
・OSC-blob[r][p]

……[p]
……[p]

なんか長くなりそうだから、[r]
簡単に黒板に書いて説明するね。[p]

[chara_hide name="bakeo" ]
[bg storage="osc.png" time="100"]

さっきのデータを読むとこんな感じだよ。[p]

ちなみにPHPにはbyte型がないから、[r]
stringを使って解析するんだ。[p]
php-oscの場合は突貫工事で作ったから、[r]
受け取った文字列を16進数に変換して8文字ごとに分割することで解析してるよ。[p]


[bg storage="vtuber-list.png" time="100"]
[chara_show name="bakeo" face="front"]

; *** phpsdl ***
最後に[font bold=true]phpsdl[resetfont]について説明するよ。[p]
phpsdlはPHPからSDLを動かすための、[r]
PHP拡張モジュールだよ。[p]
SDLはSimple DirectMedia Layerの略で、[r]
C言語で書かれたクロスプラットフォームのマルチメディアライブラリだよ。[p]
この説明はほとんどWikipediaの引用だよ。[p]
これでPHPでもGUIアプリケーションが作れるね。[p]

それじゃあ、最後に全部合わせたデモを見せるね。[p]

[chara_hide name="bakeo" ]
[bg storage="demo.png" time="100"]
#
デモをどうぞ[p]

[chara_show name="bakeo" ]

[eval exp="sf.vtuber=true"]
[jump storage="scene1.ks" target=*end]
