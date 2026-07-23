stopsound @a[tag=startcinematique] player minecraft:presentation.musique

schedule clear datapack:initialisation/cinematique/1cinematique_loop
schedule clear datapack:initialisation/cinematique/2cinematique
schedule clear datapack:initialisation/cinematique/2cinematique_loop
schedule clear datapack:initialisation/cinematique/3cinematique
schedule clear datapack:initialisation/cinematique/3cinematique_loop
schedule clear datapack:initialisation/cinematique/4cinematique
schedule clear datapack:initialisation/cinematique/4cinematique_loop

execute as @a[tag=startcinematique] run gamemode adventure @s
execute as @a[tag=startcinematique] run tp @s -108 1 58 180 0
execute as @a[tag=startcinematique] run tag @s add endcinematique
execute as @a[tag=startcinematique] run tag @s remove startcinematique

kill @e[tag=firstanimation]
forceload remove 135 249

# on ne lance le dialogue que s'il n'a jamais commencé (un 2e joueur qui finit sa cinématique ne doit pas le relancer)
execute if score #etape dialogue matches 0 run schedule function datapack:interaction/spawn/firstinteraction_spawn 3s