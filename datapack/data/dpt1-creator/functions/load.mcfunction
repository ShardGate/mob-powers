# stuff put here will run when /reloading

tellraw @a ["",{"text":"[","color":"yellow"},{"text":"Datapack Tennis V1","color":"gold"},{"text":"] ","color":"yellow"},{"text":"Reload successful!","color":"green"}]
tellraw @a ""

execute as @a run function dpt1-general:menu

scoreboard objectives add dpt1.creator.use_item1 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add dpt1.creator.soul_cooldown dummy
scoreboard objectives add dpt1.creator.shield_hits dummy

scoreboard objectives add dpt1.general.cooldown dummy
scoreboard objectives add dpt1.general.cooldown_enabled dummy
scoreboard players set #DPT1-Global dpt1.general.cooldown_enabled 1
execute as @a run scoreboard players set @s dpt1.creator.use_item1 0
execute as @a run scoreboard players set @s dpt1.general.cooldown 0
