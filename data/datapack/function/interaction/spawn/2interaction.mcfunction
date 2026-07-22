schedule clear datapack:interaction/spawn/chest

execute if score #etape dialogue matches 1 run tellraw @a {"text":"§a[Boby]§f : Vous avez l’air de vrais guerriers ! "}
execute if score #etape dialogue matches 2 run tellraw @a {"text":"§a[Boby]§f : Le village se trouve là bas sur la gauche, vous ne pouvez pas rater la sortie !"}
execute if score #etape dialogue matches 3 run tellraw @a {"text":"§a[Boby]§f : Bonne chance à vous !"}
execute if score #etape dialogue matches 4 run tellraw @a {"text":"§a[Boby]§f : Revenez me voir si vous trouvez quelque chose"}

scoreboard players add #etape dialogue 1

execute if score #etape dialogue matches ..4 run schedule function datapack:interaction/spawn/firstinteraction_spawn 60t