execute as @e[tag=firstanimation,limit=1] at @s run tp @s ~0.5 ~ ~

execute as @a[tag=startcinematique] run spectate @e[tag=firstanimation,limit=1]
schedule function datapack:initialisation/cinematique/4cinematique_loop 1t