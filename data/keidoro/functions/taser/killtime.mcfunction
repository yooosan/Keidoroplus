#キルできる時間帯になったらキルする。
scoreboard players add @s taserktime 1
execute if score @s taserktime matches 10 run function keidoro:taser/arrowkill