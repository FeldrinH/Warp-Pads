#Not just yet, though.
	scoreboard players set @s wp.cooldown 3
	tag @a[scores={wp.cooldown=1..}] remove wp.using
	scoreboard players add @s[tag=wp.onTier1] wp.spam 25
	scoreboard players add @s[tag=wp.onTier2] wp.spam 35
	scoreboard players add @s[tag=wp.onTier3] wp.spam 1

#Advancements
	scoreboard players set @s wp.passCount 0
	execute at @a[tag=wp.activePass] run scoreboard players add @s wp.passCount 1
	advancement grant @s[tag=wp.pilot,advancements={smoochypit:warppad/actions/warp=false}] only smoochypit:warppad/actions/warp

#Teleport the "pilot"
	tp @s[tag=wp.pilot] ~ ~-0.5 ~
	effect give @s[tag=wp.pilot] minecraft:hunger 2 150 true
	effect give @s[tag=wp.pilot] minecraft:blindness 1 1 true
	playsound minecraft:ui.toast.in player @a[distance=..8] ~ ~ ~ 0.75 1.2

#Teleport and align each "passenger"
	tp @e[tag=wp.activePass] ~ ~-0.5 ~
	effect give @e[type=player, tag=wp.activePass] minecraft:hunger 2 150 true
	effect give @e[type=player, tag=wp.activePass] minecraft:blindness 1 1 true
	execute as @e[tag=wp.activePass,scores={wp.passXoffset=..-1}] at @s run function smoochypit:warppad/warping/passengers/realignx
	execute as @e[tag=wp.activePass,scores={wp.passXoffset=1..}] at @s run function smoochypit:warppad/warping/passengers/realignx
	execute as @e[tag=wp.activePass,scores={wp.passZoffset=..-1}] at @s run function smoochypit:warppad/warping/passengers/realignz
	execute as @e[tag=wp.activePass,scores={wp.passZoffset=1..}] at @s run function smoochypit:warppad/warping/passengers/realignz