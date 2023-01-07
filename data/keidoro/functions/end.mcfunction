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
kill @e[type=skeleton,tag=sc]
clear @a[tag=gmp]
tag @a remove escape
bossbar set minecraft:time players
bossbar set minecraft:gtime players
team leave @a[tag=gmp]
spawnpoint @a[tag=gmp] -36 62 46
function keidoro:removescoreboard
execute in minecraft:overworld run tp @a[tag=gmp] -35.5 62.5 46.5 89.05 -0.80
execute in minecraft:overworld run tp @a[team=guard] -35.5 62.5 46.5 89.05 -0.80
fill 72 56 9 71 56 9 minecraft:air
tag @a remove gmp