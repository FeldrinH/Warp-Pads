execute if block ~ ~-1 ~ gold_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item:{id:"minecraft:quartz",Count:4b}}] run function smoochypit:warppad/creation/new/pads/pad1
tag @s[scores={wp.spawnAnim=1}] add wp.spawnAnimating