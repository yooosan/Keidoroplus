#ダッシュの処理
execute as @a[predicate=keidoro:exestamina,tag=dash,scores={wfrightclickv2=1..}] run function keidoro:gogogo/leave
scoreboard players remove @s stamina 1