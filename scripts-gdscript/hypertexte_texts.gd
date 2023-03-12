extends Node


var description = {
	"chapeau":{
		"title":"Chapeau",
		"text":"Voici un [url=petit]petit[/url] Chapeau.",
		"size":100
	}
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
		"text":"[color=*object*][url=Titre de propriété]Titre de propriété[/url][/color] au nom de Sonya, pour [color=*event*][url=s’emparer de la demeure familiale]s’emparer de la demeure familiale[/url][/color].",
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
	"Titre de propriété":{
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
	"demeure_A":"demeure",
	"demeure_B":"demeure",
	"testament":"le testament de Yeong-ho",
	"proprio":"proprio",
	"lettre_michael_A":"lettre_michael",
	"lettre_michael_B":"lettre_michael",
	"plan":"plan"
}

var good_text = "12 [url=guerre]la guerre de Corée[/url] 34" #complete resolution text
var base_text = "" #text with all the placeholders, initialise from the bbcode at ready in phrase_enquete
var end_sentance = "Une fois le verdict prononcé en sa défaveur, Sonya se retrouve finalement contrainte de partir sans demander son reste. Les enfants seront élevés par leur oncle."
