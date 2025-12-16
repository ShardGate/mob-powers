
execute if score #DPT1-Global dpt1.general.cooldown_enabled matches 0 run tellraw @s ["",{"text":"[","color":"yellow"},{"text":"Datapack Tennis V1","color":"gold"},{"text":"] ","color":"yellow"},{"text":"Enabled Cooldowns!","color":"green"}]
execute if score #DPT1-Global dpt1.general.cooldown_enabled matches 0 run scoreboard players set #DPT1-Global dpt1.general.cooldown_enabled 1
