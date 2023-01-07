#矢の召喚
execute anchored eyes run summon arrow ^ ^ ^1 {life:1200s,damage:1d,Color:0,Tags:["tgar","tgop"],CustomName:'{"text":"電極","color":"yellow","italic":false}',CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:8,Amplifier:-125b,Duration:20},{Id:29,Amplifier:0b,Duration:200,ShowParticles:1b}]}
#アマスタの召喚-アマスタの召喚位置が(0.0,0.0,0.0)から離れる程に矢の速度は大きくなります
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^2 {Tags:["tg","kia"],Marker:1b,Invisible:1b}
#矢のMotionにアマスタのPosを代入
execute as @e[tag=tgar] run data modify entity @s Motion set from entity @e[tag=tg,limit=1] Pos
#アマスタのキル
kill @e[tag=tg]
#Owner指定
data modify entity @e[tag=tgar,limit=1] Owner set from entity @s UUID
#タグ除去
tag @e[tag=tgar] remove tg
#演出
item replace entity @s weapon.mainhand with air
playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 10