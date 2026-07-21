summon armor_stand 135 -21 249 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["FirstAnimation"]} 
tp @e[tag=FirstAnimation] 135 -21 249 facing -117 1 13

spectate @e[tag=FirstAnimation,limit=1]

time set night

execute as @a[tag=startcinematique] run stopsound @s music
execute as @a[tag=startcinematique] at @s run playsound minecraft:presentation.musique master @s ~ ~ ~

schedule function datapack:initialisation/cinematique/1cinematique_loop 1t
schedule function datapack:initialisation/cinematiquetitle/1title 2s

schedule function datapack:initialisation/cinematique/2cinematique 10s
schedule function datapack:initialisation/cinematiquetitle/3title 10s

schedule function datapack:initialisation/cinematique/3cinematique 20s
schedule function datapack:initialisation/cinematiquetitle/3title 20s

schedule function datapack:initialisation/cinematique/4cinematique 30s
schedule function datapack:initialisation/cinematiquetitle/4title 30s

schedule function datapack:initialisation/endcinematique 38s



