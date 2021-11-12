#Destruction of warp pads

	execute if entity @e[tag=wp.pad,tag=wp.legacyPrivPad] run function smoochypit:warppad/creation/del/legacy

	execute as @e[tag=wp.pad1] at @s unless block ~ ~-1 ~ gold_block run function smoochypit:warppad/creation/del/pad/1
	