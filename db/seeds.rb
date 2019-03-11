# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

list_of_description = [" Ce petit chien blanc a trouvé sa place dans une petite tasse", "Ce chaton est terriblement mignon, mais il est difficile de déchiffrer son attitude.En tout cas, il n’a pas l’air malheureux, bien au contraire 🙂", "Ce chaton est tout simplement parfait ! Tellement parfait qu'on dirait une peluche", "une chate blanche très touchantes et trist", " En émettant des pedigrees qui assurent qu’un animal est bien un «chat de race» et non un «chat d’apparence»", "Numéro 1 dans les cœurs des Français depuis 2012, le Maine Coon conserve sa première place avec 10897 pedigrees émis par le LOOF en 2016 contre", "Avec 1812 pedigrees émis par le LOOF en 2016, il a en effet renoué avec le succès, repris une place et est passé devant le Ragdoll.", "Après s’être hissé en 7e position du classement en 2015, le Ragdoll a perdu une place en 2016. Si le nombre de pedigrees émis par le LOOF pour la race est passé de 1764 à 1781", "C’est une place de gagnée pour le Sibérien ! Vif, doux, joueur est sociable, il n’en finit plus de séduire les Français", "Petit coup de mou pour l’Exotic Shorthair : avec 1037 pedigrees émis en 2016 par le LOOF contre 931 en 2015, il a perdu une position au classement."]
list_of_url = ["http://mimibuzz.com/plugin/buzz/view/resource/public/img/image/11564/original.jpg", "http://www.lolchat.fr/wp-content/uploads/2014/03/chat-content-tout-fou.jpg", "http://mimibuzz.com/plugin/buzz/view/resource/public/img/image/11260/original.jpg", "https://static.wamiz.fr/images/upload/17127142_2244568545769182_7436378995601440768_n(1).jpg","https://static.wamiz.fr/images/upload/17662683_1922003594700140_3668579125133574144_n(1).jpg","https://static.wamiz.fr/images/upload/17438393_1871971456382059_8008884542586748928_n(1).jpg","https://static.wamiz.fr/images/upload/17662257_1163602267101936_1623276077705068544_n(1).jpg", "https://static.wamiz.fr/images/upload/15876197_1368431473208290_144086124032163840_n(1).jpg", "https://static.wamiz.fr/uploads/Bengal(1).jpg", "https://static.wamiz.fr/uploads/Sacr%C3%A9%20de%20Birmanie(1).jpg"];
title = ["petite peluche vivante !", "Le chaton content tout fou","Grosse tête toute mimi", "Le Maine Coon", "Le Sacré de Birmanie", "Le Bengal", "Le Persan", "Le Chartreux", " Le British Shorthair", "Le Norvégien"];
price = [1200, 2300, 1300,1200, 1500, 3200, 5200,1400,5200, 6300];

for i in 0...price.length
	Item.create(title: "#{title[i]}", description: "#{list_of_description[i]}", price: "#{price[i]}", image_url: "#{list_of_url[i]}")
end
