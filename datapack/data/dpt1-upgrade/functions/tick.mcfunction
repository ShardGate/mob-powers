# stuff put here will run every tick (1/20 second)

# Use an Item [Aquatic Aura]
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {cloud:1b}}] run effect give @s minecraft:dolphins_grace 40 0 true
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {cloud:1b}}] run effect give @s minecraft:water_breathing 40 0 true
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {cloud:1b}}] run scoreboard players set @s dpt1.general.cooldown 80

# Use an Item [Lava walker]
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {lava:1b}}] run scoreboard players set @s dpt1.upgrader.lava_cooldown 161
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {lava:1b}}] run scoreboard players set @s dpt1.general.cooldown 80
execute as @a[scores={dpt1.upgrader.lava_cooldown=1..}] run scoreboard players remove @s dpt1.upgrader.lava_cooldown 1
execute as @a[scores={dpt1.upgrader.lava_cooldown=1..}] run effect give @s fire_resistance 20
execute as @a[scores={dpt1.upgrader.lava_cooldown=1..}] at @s if block ~ ~-1 ~ lava run setblock ~ ~-1 ~ minecraft:obsidian destroy

# Use an Item [Orb]
execute as @e[type=minecraft:snowball,limit=1,nbt={Item: {components:{"minecraft:custom_data":{DPT1_CustomTags:{orb:1b}}}}}] run tag @s add dpt1.upgrader.fireball
execute as @e[tag=dpt1.upgrader.fireball] at @s run summon fireball ~ ~ ~ {ExplosionPower:3, Motion:[0.0,0.0,0.0]}
execute as @e[tag=dpt1.upgrader.fireball] at @s store result entity @e[type=minecraft:fireball,limit=1,sort=nearest] power[0] double 0.01 run data get entity @s Motion[0] 10
execute as @e[tag=dpt1.upgrader.fireball] at @s store result entity @e[type=minecraft:fireball,limit=1,sort=nearest] power[1] double 0.01 run data get entity @s Motion[1] 10
execute as @e[tag=dpt1.upgrader.fireball] at @s store result entity @e[type=minecraft:fireball,limit=1,sort=nearest] power[2] double 0.01 run data get entity @s Motion[2] 10
kill @e[tag=dpt1.upgrader.fireball]

# Use an Item [Zombie's Sprint]
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {zombie:1b}}] run effect give @s speed 2 2 true

# Use an Item [Barterer's Charm]
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run effect give @s minecraft:luck 30 1 true
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run effect give @s minecraft:bad_omen 30 1 true
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run loot spawn ~ ~ ~ loot minecraft:gameplay/piglin_bartering
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run loot spawn ~ ~ ~ loot minecraft:gameplay/piglin_bartering
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run loot spawn ~ ~ ~ loot minecraft:gameplay/piglin_bartering
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run scoreboard players set @s dpt1.general.cooldown 80
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {tnt:1b}}] run item replace entity @s weapon.mainhand with air

# Use an Item [Reaper]
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {reaper:1b}}] as @e[distance=..8,type=#dpt1-creator:hostile_non_boss] at @s run effect give @s minecraft:wither 20
execute as @a[scores={dpt1.creator.use_item1=1.., dpt1.general.cooldown=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {reaper:1b}}] run scoreboard players set @s dpt1.general.cooldown 80

item replace entity @e[scores={dpt1.general.cooldown=80}] weapon.mainhand with air
execute as @a run scoreboard players set @s dpt1.creator.use_item1 0
