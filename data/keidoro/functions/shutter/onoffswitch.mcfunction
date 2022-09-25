#ONOFF
execute unless score シャッター ootimescore matches 1 run scoreboard players set シャッター ootimescore 1
execute if score シャッター ootimescore matches 1 run scoreboard players reset シャッター ootimescore
execute unless score シャッター ootimescore matches 1 run function keidoro:shutter/off
