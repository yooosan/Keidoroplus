#開封！
playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 1 1
execute if predicate keidoro:100myengetpre run function keidoro:huutou/1_million
execute unless entity @s[tag=moratta1yen] if predicate keidoro:200myengetpre run function keidoro:huutou/2_million
execute unless entity @s[tag=moratta1yen] unless entity @s[tag=moratta2yen] run function keidoro:huutou/3_million
tag @s remove moratta1yen
tag @s remove moratta2yen
clear @s bundle{ht:1}