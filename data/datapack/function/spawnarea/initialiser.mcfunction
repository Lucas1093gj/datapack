execute as @e[tag=Boby] run kill @s

#initialisation maison de base

execute if score #etape starthouse matches 0 run fill -97 0 51 -81 17 65 air
execute if score #etape starthouse matches 0 run clone -37 1 160 -21 18 174 -97 0 51

#initialisation du quai de pêche

kill @e[tag=fisherman,type=villager]

# -- structure broken --
execute if score #etape fishing matches 0 run fill -121 -3 44 -116 3 50 air
execute if score #etape fishing matches 0 run clone -213 1 155 -208 6 161 -121 -3 44
# -- structure en etat --
execute if score #etape fishing matches 1 run fill -121 -3 44 -116 3 50 air
execute if score #etape fishing matches 1 run clone -212 0 169 -207 6 175 -121 -3 44
execute if score #etape fishing matches 1 run summon villager -115 1 51 {VillagerData:{type:plains,profession:fisherman,level:99},Offers:{Recipes:[{maxUses:999999,buy:{id:pufferfish,count:4},sell:{id:iron_ingot,count:1}},{maxUses:999999,buy:{id:salmon,count:12},sell:{id:gold_ingot,count:1}},{maxUses:999999,buy:{id:cod,count:12},sell:{id:gold_ingot,count:1}},{maxUses:1,buy:{id:gold_ingot,count:64},buyB:{id:diamond,count:2},sell:{id:paper,count:1,components:{custom_name:[{text:"Permis de rénovation",italic:false}],lore:[[{text:"Ce permis vous permet de rénover le quai",italic:false,color:"#e1ff00"}],[{text:"afin de débloquer une nouvelle zone !",italic:false,color:"#e1ff00"}]],rarity:epic}}}]},CustomName:[{text:"Pêcheur",color:"#18ecc9"}],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Rotation:[0f,0f],Tags:["fisherman"]}



setworldspawn -108 1 58 180 0
summon villager -94 1 60 {Rotation:[95.0f,0.0f],VillagerData:{type:plains,profession:mason,level:99},Offers:{Recipes:[{maxUses:100000000,buy:{id:rotten_flesh,count:32},sell:{id:gold_ingot,count:1}}]},CustomName:[Boby],CustomNameVisible:1b,Invulnerable:1b,NoAI:1b,Tags:["Boby"]}

#uniquement au tout premier lancement : tp des joueurs au spawn et nettoyage des items au sol
execute if score #etape starthouse matches 0 as @a[tag=player,tag=!dev] at @s run tp @s -108 1 58 180 0
execute if score #etape starthouse matches 0 run kill @e[type=item]


#initialisation text display
kill @e[tag=texte_start,type=text_display]
summon text_display -109 3 49 {Tags:["texte_start"],text:'§eMettez la musique du jeu',billboard:"center"}

#on passe starthouse a 1 pour éviter une régéneration a chaque fois (doit rester la dernière commande)
execute if score #etape starthouse matches 0 run scoreboard players add #etape starthouse 1