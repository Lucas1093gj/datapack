execute as @a[tag=!dev] at @s run tag @s add player
execute as @a[tag=player,tag=!dev,tag=!startcinematique] run gamemode adventure @s
execute as @a[gamemode=adventure,x=-106,y=0,z=56,dx=-4,dy=4,dz=4,tag=player,tag=!dev,tag=!startcinematique,tag=!endcinematique] run function datapack:initialisation/start
execute as @a[tag=startcinematique] run spectate @e[tag=firstanimation,limit=1]

#recovery chest 
clone -143 -7 75 -143 -7 75 -110 2 67
fill -143 -7 75 -143 -7 75 air
fill -143 -7 75 -143 -7 75 chest


#heal dans la maison
execute as @a[tag=player,x=-92,y=0,z=55,dx=5,dy=12,dz=6] run effect give @s regeneration 1 2 true
execute as @a[tag=player] run effect give @s saturation 1 2 true