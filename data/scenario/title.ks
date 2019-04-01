*start
@cm
@ct
@clearstack
;[eval exp="sf.vtuber=false"]
;[eval exp="sf.library=false"]
[if exp="sf.vtuber && sf.library"]
@bg storage ="title-clear.jpg" time=100
[else]
@bg storage ="title.jpg" time=100
[endif]
@wait time = 200

[button x=100 y=450 graphic="title/start.png" target="gamestart"]
[button x=100 y=530 graphic="title/load.png"  role="load" ]

; [button x=100 y=250 graphic="title/button_start.png" target="gamestart"]
; [button x=100 y=320 graphic="title/button_load.png"  role="load" ]
; [button x=100 y=390 graphic="title/button_cg.png" storage="cg.ks" ]
; [button x=100 y=460 graphic="title/button_replay.png" storage="replay.ks" ]
; [button x=100 y=530 graphic="title/button_config.png" role="sleepgame" storage="config.ks" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"



