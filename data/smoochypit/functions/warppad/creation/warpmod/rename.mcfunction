data modify entity @s CustomName set from entity @e[type=item,limit=1,tag=!global.ignore,tag=!global.ignore.kill,sort=nearest,distance=..0.1] Item.tag.display.Name
particle witch ~ ~ ~ 0 0 0 0.2 25
scoreboard players set @a[distance=..8,tag=!global.ignore.gui] wp.guitimer 1
tag @a[distance=..8,tag=!global.ignore.gui] add global.ignore.gui
title @a[distance=..8,scores={wp.guitimer=1..}] actionbar {"text":"Warp Pad renamed to ","color":"dark_purple", "extra":[{"selector":"@s"}]}
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,limit=1,sort=nearest,dx=0,dy=0,dz=0]