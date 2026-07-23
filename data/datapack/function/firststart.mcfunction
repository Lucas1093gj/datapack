# -- création des objectives (sans effet si elles existent déjà) --
scoreboard objectives add dialogue dummy
scoreboard objectives add fishing dummy
scoreboard objectives add starthouse dummy
scoreboard objectives add seconddialogue dummy
scoreboard objectives add startchest dummy

# -- initialisation uniquement si le score n'existe pas encore, pour préserver la progression entre deux chargements --
execute unless score #etape dialogue = #etape dialogue run scoreboard players set #etape dialogue 0
execute unless score #etape fishing = #etape fishing run scoreboard players set #etape fishing 0
execute unless score #etape starthouse = #etape starthouse run scoreboard players set #etape starthouse 0
execute unless score #etape seconddialogue = #etape seconddialogue run scoreboard players set #etape seconddialogue 0
execute unless score #etape startchest = #etape startchest run scoreboard players set #etape startchest 0

schedule function datapack:spawnarea/initialiser 1t

# -- gamerule --

gamerule keep_inventory true
gamerule immediate_respawn true
gamerule command_blocks_work true

gamerule mob_griefing false
gamerule show_advancement_messages false
gamerule raids false
gamerule command_block_output false
gamerule pvp false
gamerule natural_health_regeneration false

gamerule respawn_radius 0


# -- reset hopper boite au lettre --
clone -126 -9 75 -122 -9 75 -132 -9 75

schedule clear datapack:initialisation/cinematique/1cinematique_loop
schedule clear datapack:initialisation/cinematique/2cinematique
schedule clear datapack:initialisation/cinematique/2cinematique_loop
schedule clear datapack:initialisation/cinematique/3cinematique
schedule clear datapack:initialisation/cinematique/3cinematique_loop
schedule clear datapack:initialisation/cinematique/4cinematique
schedule clear datapack:initialisation/cinematique/4cinematique_loop
schedule clear datapack:initialisation/cinematiquetitle/1title
schedule clear datapack:initialisation/cinematiquetitle/2title
schedule clear datapack:initialisation/cinematiquetitle/3title
schedule clear datapack:initialisation/cinematiquetitle/4title
schedule clear datapack:initialisation/endcinematique
schedule clear datapack:interaction/spawn/chest
schedule clear datapack:interaction/spawn/firstinteraction_spawn
schedule clear datapack:interaction/spawn/2interaction
schedule clear datapack:recovery/particle
schedule clear datapack:recovery/clear_particle

# -- reprise des séquences interrompues par un restart (les clears ci-dessus tuent les schedules en cours) --
execute if score #etape dialogue matches 0 if entity @a[tag=endcinematique] run schedule function datapack:interaction/spawn/firstinteraction_spawn 3s
execute if score #etape dialogue matches 1..11 run schedule function datapack:interaction/spawn/firstinteraction_spawn 3s
execute if score #etape dialogue matches 12.. if score #etape startchest matches 0 run schedule function datapack:interaction/spawn/chest 2s
execute if score #etape startchest matches 2 if score #etape seconddialogue matches 1..4 run schedule function datapack:interaction/spawn/2interaction 3s
