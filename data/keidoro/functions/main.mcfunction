#金10個持ってと脱出可能時間の条件達成で外に出ると脱出するようにする。
execute if score 残り時間 time matches 120 unless score 残り時間st ootimescore matches 1 run function keidoro:esrp/start
#脱出する
#execute if score 脱出可能スコアボード ootimescore matches 1 if predicate keidoro:escape
#時間処理
execute if score タイマースタート ootimescore matches 1 run scoreboard players add 残り時間st ootimescore 1
execute if score タイマースタート ootimescore matches 1 if score 残り時間st ootimescore matches 20 run function keidoro:timer/time
execute if score 残り時間 time matches 0 run function keidoro:timer/stop
execute store result bossbar minecraft:time value run scoreboard players get 残り時間 time
#右クリック検知
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{fe:1}}},scores={wfrightclick=1..}] at @s run function keidoro:fire_e/executefire
execute as @e[type=armor_stand,tag=feas] at @s run scoreboard players add @s festtimest 1
#execute at @e[type=armor_stand,tag=feas,scores={festtimest=1..}] if entity @a[team=guard,distance=..6] positioned ~ ~6 ~ if entity @s[distance=..6] at @s run function keidoro:fire_e/if_true
execute as @e[type=armor_stand,tag=feas,scores={festtimest=1..}] at @s as @e[distance=..2,team=guard] at @s positioned ~ ~2 ~ if entity @e[distance=..2,team=guard] run function keidoro:fire_e/if_true
#execute as @e[distance=..d1] positioned ~ ~Y ~ if entity @s[distance=..d2] run ...
execute at @e[type=armor_stand,tag=feas,scores={festtimest=1..199}] run function keidoro:fire_e/particle
#execute at @e[type=armor_stand,tag=feas,scores={festtimest=1..199}] run particle minecraft:cloud ~ ~1 ~ 1 1 1 0 40
execute as @e[scores={festtimest=100..}] at @s run function keidoro:fire_e/firestop
#chest更新
execute if score ゲームスタート ootimescore matches 1 if score チェスト更新タイマーst ootimescore matches 1 run function keidoro:timer/chest/chesttime
#スタミナ設定
execute if score スタミナ有無 setting matches 1 run function keidoro:running/ra_execute
#医療キット使用検知
execute as @a[nbt={SelectedItem:{id:"minecraft:red_shulker_box",Count:1b,tag:{mk:1}}},predicate=keidoro:shift] at @s run function keidoro:healthkit/mk_particle
execute as @a[predicate=!keidoro:shift] at @s run scoreboard players reset @s mktime
execute as @a[scores={mktime=160..}] at @s run function keidoro:healthkit/mk_use
#エネルギードリンク
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{ed:1}}},scores={wfrightclick=1..}] at @s run function keidoro:energydrink/use
#テーザー銃
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{tg:1}}},scores={wfrightclick=1..}] at @s run function keidoro:taser/shot
#死亡処理
execute as @a[scores={ecdeath=1..}] at @s run function keidoro:prison/inpri
#hasbeen
execute as @a at @s store result score @s moneyhasbeen run clear @s emerald{money:1} 0
#タイマー0になったら自動的終了
execute if score 時間自動終了 setting matches 1 if score 残り時間 time matches 0 run function keidoro:end
#ゲームスターと判定の/spawnpoint
execute if score ゲームスタート ootimescore matches 1 run spawnpoint @a[tag=gmp] 79 52 51
#ゲーム開始チェストの中身毎回入れ替え
data merge block -61 60 36 {Items:[{Slot:10b,id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"大雑把なこのゲームの流れ","color":"reset","italic":false}'},stsr:1}},{Slot:11b,id:"minecraft:writable_book",Count:1b,tag:{display:{Name:'{"text":"このゲームを始める前に...","color":"red","italic":false}'},bgs:1,pages:[""]}},{Slot:12b,id:"minecraft:redstone_torch",Count:1b,tag:{display:{Name:'{"text":"警備員に立候補する","color":"blue","italic":false}'},bac:1,Enchantments:[{}]}},{Slot:13b,id:"minecraft:redstone_torch",Count:1b,tag:{display:{Name:'{"text":"警備員の立候補を取り消す","color":"blue","italic":false}'},nbac:1}},{Slot:14b,id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'{"text":"警備員を決める（1名ずつ）","color":"aqua","italic":false}',Lore:['{"text":"※Adminタグがないと使用できません。","color":"red","italic":false}']},CustomModelData:1,sg:1}},{Slot:15b,id:"minecraft:goat_horn",Count:1b,tag:{display:{Name:'{"text":"GAME START","color":"gray","italic":false}',Lore:['{"text":"※Adminタグがないと使用できません。","color":"red","italic":false}']},gs:1,instrument:"minecraft:seek_goat_horn"}}]}
#それぞれの検知
function keidoro:gschest/execute
#検知して召喚
execute unless entity @e[type=blaze,nbt={Tags:["dg"]}] run summon blaze 57.5 52 70.5 {NoAI:1b,Health:6f,Tags:["dg"]}
#燃料を入れると処理をする
execute if block 57 49 76 minecraft:dispenser{Items:[{Slot:0b,id:"minecraft:blaze_rod",Count:1b}]} run function keidoro:elevator/fuel
#GOGOGO!
execute as @a[scores={wfrightclickv2=1..}] at @s run function keidoro:gogogoex
#dashの処理
execute as @a[tag=dash,predicate=!keidoro:run] run function keidoro:gogogo/leave
execute as @a[tag=dash,predicate=keidoro:shift] run function keidoro:gogogo/leave
#dashの処理
execute as @a[tag=dash,predicate=keidoro:run] run function keidoro:gogogo/dashfu
#強制終了
execute as @a[scores={stamina=0}] at @s run function keidoro:gogogo/leave
#回復システム
execute as @a[tag=recodash] at @s run function keidoro:gogogo/waitrecovery
#監視カメラ作っていくよぉぉぉお
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{sc:1}}},scores={wfrightclick=1..}] at @s run function keidoro:sc/setting
#監視カメラにマーク。ちなみに倒すとエフェクトクリアされる。
execute at @e[type=skeleton,tag=sc] as @a[team=thief] if entity @a[distance=..26,team=thief] positioned ~ ~8 ~ if entity @s[distance=..26] run effect give @s glowing 1000000 0 true
execute at @e[type=skeleton,tag=sc] as @a[team=thief] unless entity @a[distance=..26,team=thief] positioned ~ ~8 ~ unless entity @s[distance=..26] run effect clear @s minecraft:glowing






























































































#右クリック検知
execute as @a[scores={wfrightclick=1..}] at @s run function keidoro:rcreset/rcreset 
execute as @a[scores={crightclick=1..}] at @s run function keidoro:rcreset/rcreset