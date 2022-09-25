#検知
execute as @a[team=thief,predicate=keidoro:run] at @s run function keidoro:running/down_ra
execute as @a[team=thief,predicate=!keidoro:run] at @s run scoreboard players add @s recora_time 1
execute as @a[team=thief,predicate=keidoro:run] at @s run scoreboard players reset @s recora_time
execute as @a[team=thief,predicate=!keidoro:run,scores={recora_time=60..}] at @s run function keidoro:running/recovery_ra
execute as @a[team=thief,predicate=!keidoro:run] at @s run function keidoro:running/stop_ra
execute as @a[team=thief,predicate=keidoro:run] at @s run function keidoro:running/stop_recora
