execute store result score @s wp.linkedUUID run data get entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},limit=1,sort=nearest,dx=0,dy=0,dz=0] Thrower[0]
particle witch ~ ~ ~ 0 0 0 0.2 25
scoreboard players set @a[distance=..8,tag=!global.ignore.gui] wp.guitimer 1
tag @a[distance=..8,tag=!global.ignore.gui] add global.ignore.gui
title @a[distance=..8,scores={wp.guitimer=1..}] actionbar {"text":"Warp Pad set to Private","color":"dark_purple"}
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,limit=1,sort=nearest,distance=..0.1]