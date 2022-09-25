#スタミナ回復
execute unless entity @s[tag=dash] run scoreboard players add @s stamina 1
execute unless entity @s[tag=dash] run scoreboard players set @s waitreco 119
execute if entity @s[tag=dash] run scoreboard players reset @s waitreco
execute if entity @s[tag=dash] run tag @s remove recodash
execute if score @s[tag=ndash] stamina matches 160.. run scoreboard players set @s stamina 160