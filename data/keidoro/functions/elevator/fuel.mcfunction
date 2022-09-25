#燃料をぶち込むぞ！
scoreboard players add エレベーター燃料 score 4
data merge block 57 49 76 {Items:[{Slot:0b,id:"minecraft:air",Count:1b}]}
execute if score エレベーター燃料 score matches 21.. run scoreboard players set エレベーター燃料 score 20
execute if score エレベーター燃料 score matches 4 run setblock 56 51 77 minecraft:redstone_block
execute if score エレベーター燃料 score matches 8 run setblock 56 52 77 minecraft:redstone_block
execute if score エレベーター燃料 score matches 12 run setblock 56 53 77 minecraft:redstone_block
execute if score エレベーター燃料 score matches 16 run setblock 56 54 77 minecraft:redstone_block
execute if score エレベーター燃料 score matches 20 run setblock 56 55 77 minecraft:redstone_block