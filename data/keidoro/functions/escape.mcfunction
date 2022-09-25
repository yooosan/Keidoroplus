#脱出処理
gamemode spectator @s
tellraw @a [{"selector":"@s","color":"aqua"},{"text":"\u304c1000\u4e07\u53d6\u3063\u3066\u8131\u51fa\u3057\u307e\u3057\u305f\u3002","color":"aqua"}]
scoreboard players set @s espri 1
tag @s add escape