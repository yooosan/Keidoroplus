#使用
effect give @s instant_health 1 7 true
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
item replace entity @s weapon.mainhand with air
scoreboard players reset @s mktime