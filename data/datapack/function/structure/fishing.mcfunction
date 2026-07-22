scoreboard players set #etape fishing 1
execute if score #etape fishing matches 1 run tellraw @a {"text":"Nouvelle zone débloquer !","bold":true,"italic":true,"color":yellow}

execute if score #etape fishing matches 1 run schedule function datapack:spawnarea/initialiser 1s