# Set first hand item to dropped item
data modify entity @s ArmorItems[0] set from entity @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{display:{}}}},limit=1,sort=nearest,distance=..0.1] Item

# Set second hand item to first hand item
data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]

# Reset frequency compare marker score
scoreboard players set @e[tag=wp.pad] wp.freqCompare 1
scoreboard players set @s wp.freqCompare 77

# Store compare success in marker score
execute as @e[tag=wp.pad, scores={wp.freqCompare=1}] store success score @s wp.freqCompare run data modify entity @s ArmorItems[0].tag.display.Name set from entity @e[scores={wp.freqCompare=77}, limit=1] ArmorItems[0].tag.display.Name

execute as @e[tag=wp.pad] run data modify entity @s ArmorItems[0] set from entity @s ArmorItems[1]

execute if entity @e[tag=wp.pad, scores={wp.freqCompare=0}] run scoreboard players operation @s wp.streamFreq = @e[tag=wp.pad, scores={wp.freqCompare=0}, limit=1] wp.streamFreq
execute unless entity @e[tag=wp.pad, scores={wp.freqCompare=0}] run scoreboard players operation @s wp.streamFreq = GlobalStore wp.gFreqCounter
execute unless entity @e[tag=wp.pad, scores={wp.freqCompare=0}] run scoreboard players add GlobalStore wp.gFreqCounter 1

particle witch ~ ~ ~ 0 0 0 0.2 25
scoreboard players set @a[distance=..8,tag=!global.ignore.gui] wp.guitimer 1
tag @a[distance=..8,tag=!global.ignore.gui] add global.ignore.gui
title @a[distance=..8,scores={wp.guitimer=1..}] actionbar {"text":"Warp Stream Frequency set to ","color":"dark_purple","extra":[{"score":{"name":"@s","objective":"wp.streamFreq"}}]}
kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,limit=1,sort=nearest,distance=..0.1]