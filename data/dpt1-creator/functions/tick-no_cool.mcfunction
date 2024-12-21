# stuff put here will run every tick (1/20 second)

# Use an Item [UNICORN]
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {unicorn:1b}}] as @e[distance=..8,type=#dpt1-creator:hostile_non_boss] at @s on target run effect give @e[limit=1,sort=nearest,distance=..1] minecraft:slowness 3 255 true
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {unicorn:1b}}] run effect give @s speed 5 1 false
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {unicorn:1b}}] run effect give @s jump_boost 5 1 false
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {unicorn:1b}}] run item replace entity @s weapon.mainhand with air

# Use an Item [SOUL]
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {soul:1b}}] run scoreboard players set @s dpt1.creator.soul_cooldown 161
execute as @a[scores={dpt1.creator.soul_cooldown=2..}] run gamemode spectator
execute as @a[scores={dpt1.creator.soul_cooldown=1..}] run scoreboard players remove @s dpt1.creator.soul_cooldown 1
execute as @a[scores={dpt1.creator.soul_cooldown=1}] run gamemode survival
execute as @a[scores={dpt1.creator.soul_cooldown=1}] at @s unless block ~ ~ ~ minecraft:air run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:air destroy
execute as @a[scores={dpt1.creator.soul_cooldown=1}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {soul:1b}}] run item replace entity @s weapon.mainhand with air

# Use an Item [Illuminator]
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {illuminator:1b}}] run effect give @e[type=#dpt1-creator:hostile_non_boss,distance=..15] minecraft:glowing 20 0 true
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {illuminator:1b}}] run item replace entity @s weapon.mainhand with air

# Use an Item [Shield]
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {shield:1b}}] run scoreboard players set @s dpt1.creator.shield_hits 0
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {shield:1b}}] run tag @s add dpt1.creator.shielded
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {shield:1b}}] run item replace entity @s weapon.mainhand with air

# Use an Item [Wing]
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {wing:1b}}] run effect give @s minecraft:levitation 1 15 true
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {wing:1b}}] run effect give @s minecraft:slow_falling 30 200 true

# Use an Item [Fang]
execute as @a[scores={dpt1.creator.use_item1=1..}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {fang:1b}}] rotated ~ 0 run function dpt1-creator:evoker_init
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {fang:1b}}] run item replace entity @s weapon.mainhand with air

# Use an Item [General]
execute as @a[scores={dpt1.creator.use_item1=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data={DPT1_CustomTags: {right-clickable:1b}}] run item replace entity @s weapon.mainhand with air
