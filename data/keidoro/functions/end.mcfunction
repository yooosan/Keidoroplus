#終了
execute as @a at @s run function keidoro:prison/outpri
effect clear @a
scoreboard players reset ゲームスタート ootimescore
scoreboard players reset @a moneyhasbeen
function keidoro:timer/stop
scoreboard players reset 脱出可能スコアボード ootimescore
scoreboard players reset チェスト更新タイマー ootimescore
scoreboard players reset チェスト更新タイマーst ootimescore
tellraw @a ["",{"text":"\u8131\u51fa\u8005\uff1a","bold":true,"color":"gold"},{"selector":"@a[tag=escape]","color": "gold"}]
playsound minecraft:block.glass.break master @s ~ ~ ~ 99 0.5
fill -2 62 48 -2 59 44 glass_pane[north=true,south=true]
kill @e[type=skeleton,tag=sc]
clear @a[tag=gmp]
tag @a remove escape
team leave @a[tag=gmp]
spawnpoint @a[tag=gmp] -36 62 46
scoreboard players reset @a[team=thief] stamina
execute in minecraft:overworld run tp @a[tag=gmp] -35.5 62.5 46.5 89.05 -0.80
execute in minecraft:overworld run tp @a[team=guard] -35.5 62.5 46.5 89.05 -0.80
tag @a remove gmp