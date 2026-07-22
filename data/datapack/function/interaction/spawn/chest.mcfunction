execute if score #etape startchest matches 0 run scoreboard players set #etape startchest 1
particle minecraft:happy_villager -89 2 58 1 1 1 1 15

schedule function datapack:interaction/spawn/chest 1t

execute as @a[tag=player,x=-92,y=0,z=55,dx=5,dy=12,dz=6] run schedule function datapack:interaction/spawn/2interaction 5s
execute as @a[tag=player,x=-92,y=0,z=55,dx=5,dy=12,dz=6] run scoreboard players set #etape seconddialogue 0
schedule function datapack:interaction/spawn/chest 1t