# Dropped item has no tag, set item to default
data modify entity @s ArmorItems[0] set value {id: "minecraft:paper", Count:2b, tag:{display:{Name:'{"text":"§2Default"}'}}}

# Set second hand item to first hand item
data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]

scoreboard players set @s wp.streamFreq 0

particle witch ~ ~ ~ 0 0 0 0.2 25
scoreboard players set @a[distance=..8,tag=!global.ignore.gui] wp.guitimer 1
tag @a[distance=..8,tag=!global.ignore.gui] add global.ignore.gui
title @a[distance=..8,scores={wp.guitimer=1..}] actionbar {"text":"Reset Warp Stream Frequency","color":"dark_purple"}
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,limit=1,sort=nearest,distance=..0.1]