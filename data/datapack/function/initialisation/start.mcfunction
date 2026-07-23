tag @s add startcinematique

execute as @a[tag=startcinematique,gamemode=adventure] run stopsound @s music
gamemode spectator @s

execute at @s run function datapack:initialisation/startcinematique
