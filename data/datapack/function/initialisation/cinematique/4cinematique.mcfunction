schedule clear datapack:initialisation/cinematique/3cinematique_loop

tp @e[tag=firstanimation,limit=1] -32 16 43 facing -138 13 30


execute as @a[tag=startCinematique] at @e[tag=firstanimation,limit=1] run tp @s ~ ~ ~
execute as @a[tag=startcinematique] run spectate @e[tag=firstanimation,limit=1]
schedule function datapack:initialisation/cinematique/4cinematique_loop 1t