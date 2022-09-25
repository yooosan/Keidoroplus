#loot させる
#本棟1F
execute at @e[type=marker,tag=chest] run function keidoro:timer/chest/chest
execute at @e[type=marker,tag=gchest] run function keidoro:timer/chest/gchest
tellraw @a {"text":"\u203b\u30c1\u30a7\u30b9\u30c8\u3092\u66f4\u65b0\u3057\u307e\u3057\u305f\u3002","color":"aqua"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 999 0.5
scoreboard players reset チェスト更新タイマー ootimescore