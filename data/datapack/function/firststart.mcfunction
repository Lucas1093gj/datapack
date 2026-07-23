# RESET COMPLET du jeu — déclenché par command block, pas au chargement
scoreboard players set #etape dialogue 0
scoreboard players set #etape fishing 0
scoreboard players set #etape starthouse 0
scoreboard players set #etape seconddialogue 0
scoreboard players set #etape startchest 0

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

# -- on tue les séquences en cours de la partie précédente --
kill @e[tag=firstanimation]

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
