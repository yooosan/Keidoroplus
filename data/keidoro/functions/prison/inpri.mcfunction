#捕まった時の検知
clear @s warped_fungus_on_a_stick{ed:1}
clear @s warped_fungus_on_a_stick{fe:1}
clear @s red_shulker_box{mk:1}
scoreboard players add @s moneydeltime 1
scoreboard players set @s espri 1
execute if score @s moneydeltime matches 120 run function keidoro:prison/money1del