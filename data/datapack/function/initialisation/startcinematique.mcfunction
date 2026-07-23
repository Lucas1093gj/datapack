#on summon la camera directement a sa position de depart, la zone est toujours chargée
kill @e[tag=firstanimation]
summon armor_stand -132 6 51 {Invisible:1b,NoGravity:1b,Tags:["firstanimation"]}

tp @e[tag=firstanimation,limit=1] -132 6 51 facing -117 1 13

execute as @a[tag=startcinematique] run spectate @e[tag=firstanimation,limit=1]

time set night

execute as @a[tag=startcinematique] at @s run playsound minecraft:presentation.musique master @s ~ ~ ~ 1 1 1

schedule function datapack:initialisation/cinematique/1cinematique_loop 1t
schedule function datapack:initialisation/cinematiquetitle/1title 2s

schedule function datapack:initialisation/cinematique/2cinematique 10s
schedule function datapack:initialisation/cinematiquetitle/2title 10s

schedule function datapack:initialisation/cinematique/3cinematique 20s
schedule function datapack:initialisation/cinematiquetitle/3title 20s

schedule function datapack:initialisation/cinematique/4cinematique 30s
schedule function datapack:initialisation/cinematiquetitle/4title 30s

schedule function datapack:initialisation/endcinematique 40s

