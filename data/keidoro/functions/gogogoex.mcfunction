execute as @a[predicate=keidoro:exestamina,tag=dash] run function keidoro:gogogo/leave
execute as @a[predicate=keidoro:exestamina,tag=ndash] at @s run function keidoro:gogogo/gogogo 
execute unless entity @s[predicate=keidoro:exestamina,tag=ndash] at @s run scoreboard players reset @s wfrightclickv2