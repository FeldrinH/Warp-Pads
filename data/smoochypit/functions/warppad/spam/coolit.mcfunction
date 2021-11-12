#This file controls cooldown and spam timers

#To prevent unintentional warping
	scoreboard players add @a wp.cooldown 0
	tag @a[scores={wp.cooldown=1..}] remove wp.using
	scoreboard players remove @a[scores={wp.cooldown=1..}] wp.cooldown 1

#Punish spamming warp pads
	tag @a[scores={wp.spam=..100,wp.cooldown=0},tag=wp.spamHalt] remove wp.spamHalt
	tag @a[scores={wp.spam=100..}] add wp.spamHalt
	scoreboard players set @a[scores={wp.spam=100..}] wp.cooldown 60
	scoreboard players set @a[scores={wp.spam=100..}] wp.spam 0
	scoreboard players set @a[gamemode=creative] wp.spam 0

schedule function smoochypit:warppad/spam/coolit 5t