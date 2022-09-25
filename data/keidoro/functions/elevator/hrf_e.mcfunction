execute in minecraft:overworld run tp @s 52.99 84.18 27.23 -0.48 6.71
playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 2.0
scoreboard players remove エレベーター燃料 score 1
execute if score エレベーター燃料 score matches 0 run setblock 56 51 77 minecraft:air
execute if score エレベーター燃料 score matches 4 run setblock 56 52 77 minecraft:air
execute if score エレベーター燃料 score matches 8 run setblock 56 53 77 minecraft:air
execute if score エレベーター燃料 score matches 12 run setblock 56 54 77 minecraft:air
execute if score エレベーター燃料 score matches 19 run setblock 56 55 77 minecraft:air