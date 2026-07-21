schedule clear datapack:initialisation/cinematique/2cinematique_loop

tp @e[tag=FirstAnimation,limit=1] -72 2 13 facing -78 3 1

execute as @a[tag=startCinematique] at @e[tag=FirstAnimation,limit=1] run tp @s ~ ~ ~
execute as @a[tag=startcinematique] run spectate @e[tag=FirstAnimation,limit=1]
schedule function datapack:initialisation/cinematique/3cinematique_loop 1t