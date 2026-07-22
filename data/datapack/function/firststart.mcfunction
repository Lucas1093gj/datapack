scoreboard players set #etape dialogue 0
scoreboard players set #etape fishing 0
scoreboard players set #etape starthouse 0
scoreboard players set #etape seconddialogue 0

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
schedule clear datapack:interaction/spawn/chest
schedule clear datapack:interaction/spawn/firstinteraction_spawn
