#警備員に立候補する
tag @s add st
tellraw @s {"text":"\u8b66\u5099\u54e1\u306b\u7acb\u5019\u88dc\u3057\u307e\u3057\u305f\u3002","color":"blue"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2.0
clear @s redstone_torch{bac:1}
function keidoro:gschest/chest