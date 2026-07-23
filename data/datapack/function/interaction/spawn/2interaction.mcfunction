schedule clear datapack:interaction/spawn/chest

execute if score #etape seconddialogue matches 1 run tellraw @a[tag=endcinematique] {"text":"§a[Boby]§f : Vous avez l’air de vrais guerriers ! "}
execute if score #etape seconddialogue matches 2 run tellraw @a[tag=endcinematique] {"text":"§a[Boby]§f : Le village se trouve là bas sur la gauche, vous ne pouvez pas rater la sortie !"}
execute if score #etape seconddialogue matches 3 run tellraw @a[tag=endcinematique] {"text":"§a[Boby]§f : Bonne chance à vous !"}
execute if score #etape seconddialogue matches 4 run tellraw @a[tag=endcinematique] {"text":"§a[Boby]§f : Revenez me voir si vous trouvez quelque chose"}

scoreboard players add #etape seconddialogue 1

execute if score #etape seconddialogue matches ..4 run schedule function datapack:interaction/spawn/2interaction 3s
