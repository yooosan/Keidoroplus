#200万円獲得した！
playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 1 1
give @s emerald{display:{Name:'{"translate":"1 million yen bill","color":"gold","italic":false}',Lore:['{"translate":"1 million yen...","color":"gold","italic":false}']},CustomModelData:1,money:1} 2
tellraw @s {"translate":"You received 2 million yen!!","color":"gold"}
tag @s add moratta2yen