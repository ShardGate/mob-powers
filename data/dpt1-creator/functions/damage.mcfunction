execute as @a[tag=dpt1.creator.shielded] run scoreboard players add @s dpt1.creator.shield_hits 1
advancement revoke @s only dpt1-creator:take_damage
execute as @a[tag=dpt1.creator.shielded] if score @s dpt1.creator.shield_hits matches 21.. run tag @s remove dpt1.creator.shielded
execute as @a if score @s dpt1.creator.shield_hits matches 21.. run scoreboard players set @s dpt1.creator.shield_hits 0
execute as @a[tag=dpt1.creator.shielded] run effect give @s instant_health 1