execute as @e[tag=Boby] run kill @s

fill -121 -3 44 -116 3 50 air

#initialisation maison de base

execute if score #etape starthouse matches 0 run fill -97 0 51 -81 17 65 air
execute if score #etape starthouse matches 0 run clone -213 1 155 -208 6 161 -97 0 51

#on rajoute 1 pour éviter une régéneration a chaque fois
execute if score #etape starthouse matches 0 run scoreboard players add #etape starthouse 1



#initialisation du quai de pêche

# -- structure broken --
execute if score #etape fishing matches 0 run fill -121 -3 44 -116 3 50 air
execute if score #etape fishing matches 0 run clone -37 1 160 -21 18 174 -121 -3 44
# -- structure en etat --
execute if score #etape fishing matches 1 run fill -121 -3 44 -116 3 50 air
execute if score #etape fishing matches 1 run clone -212 0 169 -207 6 175 -121 -3 44



setworldspawn -108 1 58 180 0
summon villager -94 1 60 {Rotation:[95.0f,0.0f],VillagerData:{type:plains,profession:mason,level:99},Offers:{Recipes:[{maxUses:100000000,buy:{id:rotten_flesh,count:32},sell:{id:gold_ingot,count:1}}]},CustomName:[Boby],CustomNameVisible:1b,Invulnerable:1b,NoAI:1b,Tags:["Boby"]}
execute as @a[tag=player,tag=!dev] at @s run tp @s -108 1 58 180 0

kill @e[type=item]