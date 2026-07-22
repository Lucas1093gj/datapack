execute if score #etape dialogue matches 0 run tellraw @a {"text":"§4[inconnu(e)]§f : Hey toi !"}
execute if score #etape dialogue matches 1 run tellraw @a {"text":"§4[inconnu(e)]§f : Tu m'entends ? vien par ici !"}
execute if score #etape dialogue matches 2 run tellraw @a {"text":"§a[Boby]§f : Bienvenue, je m'apelle Boby et je suis le seul survivant dans ce village..."}

scoreboard players add #etape dialogue 1

execute if score #etape dialogue matches ..2 run schedule function mon_namespace:dialogue 60t
