#検知
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{stsr:1}}]}] at @s run function keidoro:gschest/smabout
execute as @a[nbt={Inventory:[{id:"minecraft:writable_book",tag:{bgs:1}}]}] at @s run function keidoro:gschest/bgs
execute as @a[nbt={Inventory:[{id:"minecraft:redstone_torch",tag:{bac:1}}]}] at @s run function keidoro:gschest/bac
execute as @a[nbt={Inventory:[{id:"minecraft:redstone_torch",tag:{nbac:1}}]}] at @s run function keidoro:gschest/nbac
execute as @a[nbt={Inventory:[{id:"minecraft:stone_sword",tag:{sg:1}}]},tag=Admin] at @s run function keidoro:selectedguard
execute as @a[nbt={Inventory:[{id:"minecraft:stone_sword",tag:{sg:1}}]},tag=!Admin] at @s run function keidoro:gschest/sgerror
execute as @a[nbt={Inventory:[{id:"minecraft:goat_horn",tag:{gs:1}}]},tag=!Admin] at @s run function keidoro:gschest/gserror
execute as @a[nbt={Inventory:[{id:"minecraft:goat_horn",tag:{gs:1}}]},tag=Admin] at @s run function keidoro:start