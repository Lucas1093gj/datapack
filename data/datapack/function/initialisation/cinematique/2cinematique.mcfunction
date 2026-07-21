schedule clear datapack:initialisation/cinematique/1cinematique_loop

tp @e[tag=FirstAnimation,limit=1] -107 2 58 facing -93 3 58

execute as @a[tag=startCinematique] run spectate @e[tag=camera,limit=1]
execute as @a[tag=startCinematique] at @e[tag=camera,limit=1] run tp @s ~ ~ ~
schedule function datapack:initialisation/cinematique/2cinematique_loop 1t