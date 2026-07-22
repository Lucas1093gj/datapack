scoreboard players set #etape dialogue 0
scoreboard players set #etape fishing 0
scoreboard players set #etape starthouse 0

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

gamerule respawn_radius 0


# -- reset hopper boite au lettre --
clone -126 -9 75 -122 -9 75 -132 -9 75
