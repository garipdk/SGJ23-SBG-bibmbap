extends Node

var description = {
	"chapeau":{
		"title":"Chapeau",
		"text":"Voici un [url=petit]petit[/url] Chapeau.",
		"size":100
	},
	"titre_proprio":{
		"title":"Objet : Titre de propriété",
		"text": "Madame Lee Sonya,\n"\
		+ "\n"\
		+ "Cette lettre fait office de titre de propriété officiel.\n"\
		+ "Cette propriété est inamovible, et ne peut être cédée à moins que le décès du propriétaire ne soit constaté. Dans ce cas, les règles de successions s’appliquent, et il faudra alors se référer au testament du défunt.\n"\
		+ "Aucune contestation ne peut être soumise.\n"\
		+ "\n"\
		+ "Maître Kim Gyu-bok",
		"size":100
	},
	"testament":{
		"title":"Ceci est mon testament",
		"text":"Je soussigné Lee Yeong-ho, né le 16 février 1920 à Busan, dispose en dernière volonté :\n"\
		+ "    1. Ayant des soupçons quant à la loyauté de mon épouse, j’annule ici tous mes testaments antérieurs\n"\
		+ "    2. Je lègue tous mes biens à mes enfants Lee Sun-na, Lee Yun-bok et Lee Tae-sun à parts égales.\n"\
		+ "Lee Yeong-ho, le 20 avril 1951",
		"size":100
	},
	"telegramme":{
		"title":"Avis de décès",
		"text":"Madame,\n"\
		+ "C’est avec le plus grand regret que nous vous annonçons le décès de Lee Yeong-ho, soldat de l’armée de la République de Corée, tombé au combat le 15 juin 1951.\n"\
		+ "Nous vous présentons nos sincères condoléances, et vous assurons que son sacrifice héroïque ne tombera pas dans l’oubli.\n",
		"size":100
	},
	"lettre_front":{
		"title":"Lettre d’amour de Lee Yeong-ho à Lee Sonya depuis le front :",
		"text":"Le 2 juillet 1950\n"\
		+ "\n"\
		+ "Mon amour, mon épouse,\n"\
		+ "\n"\
		+ "Cela fait désormais presque un mois que la guerre a commencé. Je n’arrive pas à croire que nous ayons été si brutalement séparés, à peine deux mois après notre mariage. Ici, sur le front, la vie est difficile, mais j’ai la chance d’avoir mon grand-frère à mes côtés. Nous perdons du terrain de jour en jour.\n"\
		+ "Le visage de Choon-ho me hante. Sur le champ de bataille, j’ai l’impression de le voir partout, depuis qu’il a rejoint les rouges… A chaque fois que je tire, j’ai l’impression de le tuer, et de me briser.\n"\
		+ "Le Capitaine a promis de m’accorder une permission le mois prochain. Il me tarde de vous revoir, toi et les enfants.\n"\
		+ "\n"\
		+ "Je vous embrasse tendrement,\n"\
		+ "\n"\
		+ "Yeong-ho\n"\
		+ "\n"\
		+ "PS : Je te joins une photo de moi et de Cheol-ho, prise la semaine dernière.\n",
		"size":100
	},
	"journal":{
		"title":"Page de journal intime de Sonya :",
		"text":"04/03/1951\n"\
		+ "La journée a été merveilleuse ! Michael m’a donné rendez-vous dans un café de style occidental. Nous avons partagé une part de gâteau au chocolat, accompagnée d’un grand café pour moi, et d’un whisky pour lui. Michael m’a encore offert un cadeau : un collier de perles ! Il a promis de m’emmener au cinéma, demain, ils repassent des films de Chaplin ! A ce rythme, je ne vais plus pouvoir me contenter de la vie domestique, la vie urbaine a trop à offrir…\n"\
		+ "Malheureusement, j’ai dû écourter notre moment pour amener Sun-na à son cours de piano. J’avais complètement oublié ce détail, quand j’ai fixé l’heure du rendez-vous… Sur le moment, cela m’a mise hors de moi, ce sont les enfants de Yeong-ho, pas les miens, mais ensuite, je me suis sentie bête et égoïste.\n"\
		+ "\n"\
		+ "Je pense de moins en moins à lui.\n",
		"size":100
	},
	"lettre_michael":{
		"title":"Lettre à Michael :",
		"text":"Le 17 octobre 1953\n"\
+"\n"\
+"Hi Darling,\n"\
+"\n"\
+"La décision est prise. Je vais trouver un moyen de garder la maison, et tu pourras t’y installer à mes côtés, maintenant que la guerre est terminée. Mon amie Ok-ran m’a parlé d’un avocat, qui peut me fournir un titre de propriété à mon nom. Reste à se débarrasser des enfants… Je sais que c’est injuste, mais c’est tout aussi injuste de me priver de ma liberté en me les laissant dans les pattes. Eux aussi, seront plus heureux chez quelqu’un qui sera capable de les aimer, je suppose.\n"\
+"\n"\
+ "I love you.\n"\
+"\n"\
+"Sonya\n",
		"size":100
	},
}

var item_description = {#pour hypertxt
	"key":{
		"title":"text title",
		"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi diam nisl, posuere sit amet pharetra nec, vestibulum quis enim. Ut mattis at neque vitae mollis. Curabitur venenatis mi non ultrices scelerisque. Fusce ac justo in justo maximus tempus. Mauris neque erat, placerat sed efficitur quis non. ",
		"size":100
	},
	"petit":{
		"title":"tout petit",
		"text":"minuscule",
		"size":100
	}
}

var enquete_item_description = {
	"photo_famille":{
		"text":"Une photo de famille affichant [color=*person*][url=Yeong-ho]Yeong-ho[/url][/color], [color=*person*][url=Seon-yeong]Seon-yeong[/url][/color], et leurs trois enfants [color=*person*][url=Sun-na, Yun-bok et Tae-sun]Sun-na, Yun-bok et Tae-sun[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"photo_deces":{
		"text":"Portrait funéraire commémorant [color=*event*][url=le décès de Seon-yeong]le décès de Seon-yeong[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"photo_mariage":{
		"text":"Photo du mariage de [color=*person*][url=Sonya]Sonya[/url][/color] et [color=*person*][url=Yeong-ho]Yeong-ho[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"lettre_front":{
		"text":"Lettre de [color=*person*][url=Yeong-ho]Yeong-ho[/url][/color] [color=*event*][url=envoyé au front]envoyé au front[/url][/color] pendant [color=*event*][url=la guerre de Corée]la guerre de Corée[/url][/color] avec [color=*person*][url=Cheol-ho]Cheol-ho[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"photo_front":{
		"text":"Photo de [color=*person*][url=Yeong-ho]Yeong-ho[/url][/color] envoyé au front pendant [color=*event*][url=la guerre de Corée]la guerre de Corée[/url][/color] avec [color=*person*][url=Cheol-ho]Cheol-ho[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"journal":{
		"text":"Une page du journal intime de [color=*person*][url=Sonya]Sonya[/url][/color], dans lequel elle mentionne [color=*person*][url=Michael, un soldat américain]Michael, un soldat américain[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"telegramme":{
		"text":"Télégramme annonçant le décès de [color=*person*][url=Yeong-ho]Yeong-ho[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"lettre_michael":{
		"text":"Lettre à [color=*person*][url=Michael, un soldat américain]Michael[/url][/color], où [color=*person*][url=Sonya]Sonya[/url][/color] décrit son plan pour [color=*event*][url=s’emparer de la demeure familiale]s’emparer de la demeure familiale[/url][/color] et se débarrasser des enfants.",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"titre_proprio":{
		"text":"[color=*object*][url=titre de propriété]Titre de propriété[/url][/color] au nom de Sonya, pour [color=*event*][url=s’emparer de la demeure familiale]s’emparer de la demeure familiale[/url][/color].",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	},
	"testament":{
		"text":"[color=*object*][url=le testament de Yeong-ho]Le testament de Yeong-ho[/url][/color], dans lequel il désigne ses enfants comme ses uniques successeurs.",
		"hidden_texture_path":"res://icon.png",
		"found_texture_path":"res://icon.png"
	}
}

var text_colors_keys = {
	"*person*":"#ff0000",
	"*event*":"#00ff00",
	"*object*":"#0000ff"
}

var enquete_item_type = {
	"name is key":{
		"type":"person or event"
	},
	"Yun-bok":{
		"type":"person"
	},
	"Yeong-ho":{
		"type":"person"
	},
	"Seon-yeong":{
		"type":"person"
	},
	"Sun-na, Yun-bok et Tae-sun":{
		"type":"person"
	},
	"Michael, un soldat américain":{
		"type":"person"
	},
	"Sonya":{
		"type":"person"
	},
	"Cheol-ho":{
		"type":"person"
	},
	"le décès de Seon-yeong":{
		"type":"event"
	},
	"la guerre de Corée":{
		"type":"event"
	},
	"s’emparer de la demeure familiale":{
		"type":"event"
	},
	"demeure":{
		"type":"event"
	},
	"le testament de Yeong-ho":{
		"type":"object"
	},
	"lettre à Michael":{
		"type":"object"
	},
	"envoyé au front":{
		"type":"event"
	},
	"proprio":{
		"type":"object"
	},
	"titre de propriété":{
		"type":"object"
	}
}

#correspondance between meta in the text and keys in enquete_item_type
var in_text_correspondances = {
	"Yeong-ho_A":"Yeong-ho",
	"Yeong-ho_B":"Yeong-ho",
	"Yeong-ho_C":"Yeong-ho",
	"Seon-yeong":"Seon-yeong",
	"enfants_A":"Sun-na, Yun-bok et Tae-sun",
	"enfants_B":"Sun-na, Yun-bok et Tae-sun",
	"funeraire":"le décès de Seon-yeong",
	"Sonya_A":"Sonya",
	"Sonya_B":"Sonya",
	"guerre":"la guerre de Corée",
	"front":"envoyé au front",
	"Cheol-ho_A":"Cheol-ho",
	"Cheol-ho_B":"Cheol-ho",
	"Michael_A":"Michael, un soldat américain",
	"Michael_B":"Michael, un soldat américain",
	"Michael_C":"Michael, un soldat américain",
	"demeure_A":"s’emparer de la demeure familiale",
	"demeure_B":"s’emparer de la demeure familiale",
	"testament":"le testament de Yeong-ho",
	"proprio":"titre de propriété",
	"lettre_michael_A":"lettre_michael",
	"lettre_michael_B":"lettre_michael",
	"plan":"plan"
}

var good_text = "12 [url=guerre]la guerre de Corée[/url] 34" #complete resolution text
var base_text = "" #text with all the placeholders, initialise from the bbcode at ready in phrase_enquete
var end_sentance = "Une fois le verdict prononcé en sa défaveur, Sonya se retrouve finalement contrainte de partir sans demander son reste. Les enfants seront élevés par leur oncle."
