#演出処理と増やす
scoreboard players add @s mktime 1
execute as @a[scores={mktime=1..160}] at @s run title @s times 0 20 0
execute as @a[scores={mktime=1..19}] at @s run title @s title {"text":"||||||||","color":"gray"}
execute as @a[scores={mktime=20..39}] at @s run title @s title ["",{"text":"|","color":"red"},{"text":"|||||||","color":"gray"}]
execute as @a[scores={mktime=40..59}] at @s run title @s title ["",{"text":"||","color":"red"},{"text":"||||||","color":"gray"}]
execute as @a[scores={mktime=60..79}] at @s run title @s title ["",{"text":"|||","color":"red"},{"text":"|||||","color":"gray"}]
execute as @a[scores={mktime=80..99}] at @s run title @s title ["",{"text":"||||","color":"red"},{"text":"||||","color":"gray"}]
execute as @a[scores={mktime=100..119}] at @s run title @s title ["",{"text":"|||||","color":"red"},{"text":"|||","color":"gray"}]
execute as @a[scores={mktime=120..139}] at @s run title @s title ["",{"text":"||||||","color":"red"},{"text":"||","color":"gray"}]
execute as @a[scores={mktime=140..159}] at @s run title @s title ["",{"text":"|||||||","color":"red"},{"text":"|","color":"gray"}]
execute as @a[scores={mktime=160..180}] at @s run title @s title ["",{"text":"||||||||","color":"red"},{"text":"|","color":"gray"}]
execute as @a[scores={mktime=180..}] at @s run function keidoro:healthkit/mk_use