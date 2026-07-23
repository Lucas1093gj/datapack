particle minecraft:happy_villager -89 2 58 1 1 1 1 15

# verrou : le second dialogue n'est armé qu'une seule fois, à la première entrée d'un joueur dans la maison
execute if score #etape startchest matches 0 if entity @a[tag=player,x=-92,y=0,z=55,dx=5,dy=12,dz=6] run scoreboard players set #etape startchest 1
execute if score #etape startchest matches 1 run scoreboard players set #etape seconddialogue 1
execute if score #etape startchest matches 1 run schedule function datapack:interaction/spawn/2interaction 5s
execute if score #etape startchest matches 1 run scoreboard players set #etape startchest 2

schedule function datapack:interaction/spawn/chest 1t
