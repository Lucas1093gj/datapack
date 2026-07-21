execute as @e[tag=Boby] run kill @s

clone -37 1 160 -21 18 174 -97 0 51
setworldspawn -108 0 58 180 0
summon villager -94 1 60 {Rotation:[95.0f,0.0f],VillagerData:{type:plains,profession:mason,level:99},Offers:{Recipes:[{maxUses:100000000,buy:{id:rotten_flesh,count:32},sell:{id:gold_ingot,count:1}}]},CustomName:[Boby],CustomNameVisible:1b,Invulnerable:1b,NoAI:1b,Tags:["Boby"]}
execute as @a[tag=player,tag=!dev] at @s run tp @s -108 1 58 180 0
