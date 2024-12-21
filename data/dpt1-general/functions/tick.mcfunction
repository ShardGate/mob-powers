execute if score #DPT1-Global dpt1.general.cooldown_enabled matches 1 run function dpt1-creator:tick
execute if score #DPT1-Global dpt1.general.cooldown_enabled matches 1 run function dpt1-upgrade:tick

execute if score #DPT1-Global dpt1.general.cooldown_enabled matches 0 run function dpt1-creator:tick-no_cool
execute if score #DPT1-Global dpt1.general.cooldown_enabled matches 0 run function dpt1-upgrade:tick-no_cool

execute as @a run scoreboard players set @s dpt1.creator.use_item1 0
