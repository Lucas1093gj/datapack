execute if score #etape dialogue matches 0 run tellraw @a {"text":"§4[inconnu(e)]§f : Eh ! Toi là !"}
execute if score #etape dialogue matches 1 run tellraw @a {"text":"§4[inconnu(e)]§f : Tu m’entends ? Viens par ici s’il te plaît !"}
execute if score #etape dialogue matches 2 run tellraw @a {"text":"§a[Boby]§f : Bonjour ! Je me présente, je m’appelle Boby et malheureusement je ne sais pas où se trouve les autres habitants de mon village…"}
execute if score #etape dialogue matches 3 run tellraw @a {"text":"§a[Boby]§f : Nous devions aller ensemble au village du nord à un jour et demi de marche d’ici, mais j’ai eu un imprévu. Pour ne pas retarder le groupe je leur ai demandé de partir sans moi. "}
execute if score #etape dialogue matches 4 run tellraw @a {"text":"§a[Boby]§f : Deux jours plus tard, aucune nouvelle… "}
execute if score #etape dialogue matches 5 run tellraw @a {"text":"§a[Boby]§f : J’ai peur qu’il ne leur soit arrivé quelque chose, je n’ose plus sortir d’ici."}
execute if score #etape dialogue matches 6 run tellraw @a {"text":"§a[Boby]§f : Excusez-moi de vous demander ça mais est ce que vous avez vu l’un d’entre eux ?! "}
execute if score #etape dialogue matches 7 run tellraw @a {"text":"§a[Boby]§f : Dites moi oui, au moins un s’il vous plaît !"}
execute if score #etape dialogue matches 8 run tellraw @a {"text":"§a[Boby]§f : Vous n’en savez rien..? Bon d’accord, merci quand même… J’espère qu’il ne leur est rien arrivé…"}
execute if score #etape dialogue matches 9 run tellraw @a {"text":"§a[Boby]§f : Que dites-vous ? Vous voulez m’aider ?! C’est merveilleux !! je n’osais pas partir seul en expédition mais j’avais préparé quelque affaires au cas où je n’avais plus d’autre choix. "}
execute if score #etape dialogue matches 10 run tellraw @a {"text":"§a[Boby]§f : Allez vous servir dans ma maison, des équipements se trouvent dans les coffres !"}
execute if score #etape dialogue matches 11 run tellraw @a {"text":"§a[Boby]§f : Ils vous serviront plus qu’à moi !"}

scoreboard players add #etape dialogue 1

execute if score #etape dialogue matches ..11 run schedule function datapack:interaction/spawn/firstinteraction_spawn 60t


execute if score #etape dialogue matches 11 run schedule function datapack:interaction/spawn/chest 660t
