#開始の表現
title @a times 20 100 20
title @a subtitle {"text":"START!!","color":"black"}
title @a title ["",{"text":"\u30b1","bold":true,"color":"yellow"},{"text":"\u30a4","bold":true,"color":"black"},{"text":"\u30c9","bold":true,"color":"yellow"},{"text":"\u30ed","bold":true,"color":"black"},{"text":"+","bold":true,"color":"yellow"}]
#開始の処理
clear @s goat_horn{gs:1}
effect clear @a
scoreboard players set ゲームスタート ootimescore 1
function keidoro:timer/start
function keidoro:timer/chest/chestloot
effect give @a[team=guard] resistance 1000000 255 true
effect give @a saturation 1000000 255 true
scoreboard players set チェスト更新タイマーst ootimescore 1
tag @a remove st
tp @a[team=thief] 33.30 75.00 36.73 7470.21 -0.29
tp @a[team=guard] 63.88 51.00 47.70 7380.77 5.13
scoreboard players set エレベーター燃料 score 20
setblock 56 51 77 minecraft:redstone_block
setblock 56 52 77 minecraft:redstone_block
setblock 56 53 77 minecraft:redstone_block
setblock 56 54 77 minecraft:redstone_block
setblock 56 55 77 minecraft:redstone_block
scoreboard players set @a[team=thief] stamina 160
scoreboard players set 金袋判定 ootimescore 1
#開始の音
playsound minecraft:item.goat_horn.sound.2 master @a ~ ~ ~ 15 1.0