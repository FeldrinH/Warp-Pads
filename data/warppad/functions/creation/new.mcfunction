#Specifies when a warp pad should be made
	execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..2.9,tag=warpPad] unless entity @e[distance=..2.9,scores={warpSpawnAnim=1..}] if block ~ ~-1 ~ gold_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:quartz",Count:4b}}] run tag @s add warpSpawn1
	execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..2.9,tag=warpPad] unless entity @e[distance=..2.9,scores={warpSpawnAnim=1..}] if block ~ ~-1 ~ emerald_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:4b}}] run tag @s add warpSpawn2
	execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..2.9,tag=warpPad] unless entity @e[distance=..2.9,scores={warpSpawnAnim=1..}] if block ~ ~-1 ~ diamond_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:ender_eye",Count:4b}}] run tag @s add warpSpawn3
	execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..2.9,tag=warpPad] unless entity @e[distance=..2.9,scores={warpSpawnAnim=1..}] if block ~ ~-1 ~ gold_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:quartz",Count:4b}}] run scoreboard players set @s warpSpawnAnim 1
	execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..2.9,tag=warpPad] unless entity @e[distance=..2.9,scores={warpSpawnAnim=1..}] if block ~ ~-1 ~ emerald_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:4b}}] run scoreboard players set @s warpSpawnAnim 1
	execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..2.9,tag=warpPad] unless entity @e[distance=..2.9,scores={warpSpawnAnim=1..}] if block ~ ~-1 ~ diamond_block positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:ender_eye",Count:4b}}] run scoreboard players set @s warpSpawnAnim 1