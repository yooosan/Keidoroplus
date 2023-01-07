#始まったことを検知させ、tickを開始させる。（毎回ここで上限の検知を行う）
scoreboard players add チェスト更新タイマー ootimescore 1
execute if score チェスト更新タイマー ootimescore matches 2400 run function keidoro:timer/chest/chestloot