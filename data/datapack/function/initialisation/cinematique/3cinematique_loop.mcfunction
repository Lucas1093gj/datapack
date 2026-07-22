execute as @e[tag=firstanimation,limit=1] at @s run tp @s ~-0.1 ~ ~

execute as @a[tag=startcinematique] run spectate @e[tag=firstanimation,limit=1]
schedule function datapack:initialisation/cinematique/3cinematique_loop 1t