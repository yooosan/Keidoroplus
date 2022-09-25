#混乱検知
execute if entity @s[predicate=!keidoro:statuschaospredicate] run function keidoro:fire_e/fire
execute if entity @s[predicate=keidoro:statuschaospredicate] run function keidoro:fire_e/falsefire