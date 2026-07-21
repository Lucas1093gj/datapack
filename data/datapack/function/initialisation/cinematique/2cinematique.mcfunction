schedule clear datapack:initialisation/cinematique/1cinematique_loop

tp @e[tag=firstanimation,limit=1] -107 2 58 facing -93 3 58


execute as @a[tag=startcinematique] at @e[tag=firstanimation,limit=1] run tp @s ~ ~ ~
execute as @a[tag=startcinematique] run spectate @e[tag=firstanimation,limit=1]
schedule function datapack:initialisation/cinematique/2cinematique_loop 1t