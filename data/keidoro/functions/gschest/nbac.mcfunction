#警備員の立候補を取り消す
tag @s remove st
tellraw @s {"text":"\u8b66\u5099\u54e1\u306e\u7acb\u5019\u88dc\u3092\u53d6\u308a\u6d88\u3057\u307e\u3057\u305f\u3002","color":"blue"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2.0
clear @s redstone_torch{nbac:1}
function keidoro:gschest/chest