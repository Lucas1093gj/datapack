#ne se declenche qu'une seule fois
execute if score #etape fishing matches 0 run tellraw @a {"text":"Nouvelle zone débloquée !","bold":true,"italic":true,"color":"yellow"}
execute if score #etape fishing matches 0 run schedule function datapack:spawnarea/initialiser 1s
scoreboard players set #etape fishing 1
