execute as @a[tag=!dev] at @s run tag @s add player

execute as @a[gamemode=adventure,x=-106,y=0,z=56,dx=-4,dy=4,dz=4,tag=player,tag=!dev] run function datapack:initialisation/start
