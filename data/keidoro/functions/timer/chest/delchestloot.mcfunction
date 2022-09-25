#loot させる
#本棟1F
loot replace block 64 62 56 container.0 loot keidoro:item
loot replace block 47 62 56 container.0 loot keidoro:item
loot replace block 32 62 56 container.0 loot keidoro:item
loot replace block 23 63 56 container.0 loot keidoro:item
loot replace block 55 62 75 container.0 loot keidoro:item
loot replace block 39 62 75 container.0 loot keidoro:item
loot replace block 71 63 65 container.0 loot keidoro:item
loot replace block 71 63 94 container.0 loot keidoro:item
loot replace block 17 59 39 container.0 loot keidoro:item
loot replace block 13 59 52 container.0 loot keidoro:item
loot replace block 13 59 66 container.0 loot keidoro:item
loot replace block 13 59 80 container.0 loot keidoro:item
loot replace block 13 59 94 container.0 loot keidoro:item
loot replace block 19 60 89 container.0 loot keidoro:item
loot replace block 53 58 44 container.0 loot keidoro:item
loot replace block 74 59 48 container.0 loot keidoro:item
loot replace block 69 58 44 container.0 loot keidoro:item
loot replace block 22 58 42 container.0 loot keidoro:item
loot replace block 23 58 30 container.0 loot keidoro:item
#地下
loot replace block 61 51 14 container.0 loot keidoro:item
loot replace block 77 51 67 container.0 loot keidoro:item
loot replace block 48 54 58 container.0 loot keidoro:item
#2F
loot replace block 26 68 41 container.0 loot keidoro:item
loot replace block 0 69 54 container.0 loot keidoro:item
loot replace block 39 69 64 container.0 loot keidoro:item
loot replace block 26 68 70 container.0 loot keidoro:item
loot replace block 32 68 91 container.0 loot keidoro:item
loot replace block 73 66 84 container.0 loot keidoro:item
loot replace block 68 66 71 container.0 loot keidoro:item
loot replace block 47 66 68 container.0 loot keidoro:item
loot replace block 56 66 45 container.0 loot keidoro:item
loot replace block 64 66 49 container.0 loot keidoro:item
loot replace block 64 66 45 container.0 loot keidoro:item
loot replace block 71 67 31 container.0 loot keidoro:item
loot replace block 28 66 97 container.0 loot keidoro:item
#3F
loot replace block 70 76 73 container.0 loot keidoro:item
loot replace block 31 76 35 container.0 loot keidoro:item
loot replace block 39 76 82 container.0 loot keidoro:item
#RF
loot replace block 43 84 34 container.0 loot keidoro:item
loot replace block 4 84 83 container.0 loot keidoro:item
loot replace block 31 84 71 container.0 loot keidoro:item
loot replace block 31 84 83 container.0 loot keidoro:item
loot replace block 4 84 36 container.0 loot keidoro:item
tellraw @a {"text":"\u203b\u30c1\u30a7\u30b9\u30c8\u3092\u66f4\u65b0\u3057\u307e\u3057\u305f\u3002","color":"aqua"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 999 0.5
scoreboard players reset チェスト更新タイマー ootimescore