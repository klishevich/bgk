#encoding: utf-8

puts 'Create Primenenie Pages'
Page.create([
	{ 
		code: "dor_auto",
		url: "avtodorozhnoe-stroitelstvo", 
		h1: "Автодорожное строительство",
		title: "Автодорожное строительство"
	},
	{ 
		code: "dor_zhd",
		url: "zheleznodorozhnoe-stroitelstvo", 
		h1: "Железнодорожное строительство",
		title: "Железнодорожное строительство"
	},
	{ 
		code: "dor_tunnel",
		url: "tonnelnoe-stroitelstvo", 
		h1: "Тоннельное строительство",
		title: "Тоннельное строительство"
	},
	{ 
		code: "prom_port",
		url: "stroitelstvo-portov", 
		h1: "Строительство портов",
		title: "Строительство портов"
	},
	{ 
		code: "prom_aero",
		url: "stroitelstvo_ajerodromov", 
		h1: "Строительство аэродромов",
		title: "Строительство аэродромов"
	},
	{ 
		code: "prom_zolootvaly",
		url: "stroitelstvo-zolootvalov", 
		h1: "Строительство золоотвалов",
		title: "Строительство золоотвалов"
	},
	{ 
		code: "prom_poligon",
		url: "stroitelstvo-poligonov-tbo", 
		h1: "Строительство полигонов ТБО",
		title: "Строительство полигонов ТБО"
	},
	{ 
		code: "prom_nk",
		url: "netegazovyj-kompleks", 
		h1: "Нетегазовый комплекс",
		title: "Нетегазовый комплекс"
	},
	{ 
		code: "prom_pp",
		url: "promyshlennye-predprijatija", 
		h1: "Промышленные предприятия",
		title: "Промышленные предприятия"
	},
	{ 
		code: "zag_land",
		url: "landshaftnoe-stroitelstvo", 
		h1: "Ландшафтное строительство",
		title: "Ландшафтное строительство"
	},
	{ 
		code: "zag_dach",
		url: "dachnye-uchastki", 
		h1: "Дачные участки",
		title: "Дачные участки"
	},
	{ 
		code: "zag_vod",
		url: "iskusstvennye-vodoemy", 
		h1: "Искусственные водоемы",
		title: "Искусственные водоемы"
	},
	{ 
		code: "zag_eco",
		url: "stroitelstvo-jekoparkov", 
		h1: "Строительство экопарков",
		title: "Строительство экопарков"
	},
	{ 
		code: "zag_el",
		url: "internet-magazin", 
		h1: "Интернет магазин",
		title: "Интернет магазин"
	},
	{ 
		code: "zag_stroi",
		url: "stroiteljam", 
		h1: "Строителям",
		title: "Строителям"
	}
    ])

# puts 'update Product.order'
# Product.update_all order: 0

#---------------- 

# puts 'Delete and Create PorderStatuses'
# PorderStatus.delete_all
# PorderStatus.create! id: 1, name: "В процессе"
# PorderStatus.create! id: 2, name: "Размещен"
# PorderStatus.create! id: 3, name: "Завершен"
# PorderStatus.create! id: 4, name: "Отменен"

#----------------

# puts 'Delete Categories'
# puts 'Create Categories'
# Category.delete_all
# Category.create([
#     { 
#         name: "Геотекстиль БГК", 
#         order: 1
#     },
#     { 
#         name: "Тканое полотно", 
#         order: 2
#     },
#     { 
#         name: "Объемная решетка", 
#         order: 3
#     },
#     { 
#         name: "Геосетки полиэфирные для грунта", 
#         order: 4
#     },
#     { 
#         name: "Геосетка полиэфирная для асфальта", 
#         order: 5
#     },
#     { 
#         name: "Стеклосетка", 
#         order: 6
#     },
#     { 
#         name: "Базальтовая сетка", 
#         order: 7
#     },
#     { 
#         name: "Геосетка полипропиленовая", 
#         order: 8
#     },
#     { 
#         name: "Геоматы", 
#         order: 9
#     },
#     { 
#         name: "Дренажные композиты", 
#         order: 10
#     },
#     { 
#         name: "Габионы", 
#         order: 11
#     },
#     { 
#         name: "Газонная решетка", 
#         order: 12
#     },
#     { 
#         name: "Анкер", 
#         order: 13
#     }
# ])

# puts 'Delete Pages'
# Page.delete_all

# puts 'Create Pages'
# Page.create([
#   { menu_title: "О компании", 
#     url: "baltgeokom-o-kompanii-geotekstil-dornit-postavka-geosinteticheskih-materialov-moskva-sankt-peterburg-bgk", 
#     h1: "Балтгеоком - поставки геосинтетических материалов с производства",
#     title: "Балтгеоком о компании, производство геотекстиля в Санкт-Петербурге, дорнит в Москве.",
#     keywords: "балтгеоком геотекстиль дорнит тканое полотно объемная решетка геосетки стеклосетка базальтовая сетка геоматы габионы газонная решетка анкер бгк" ,
#   	description: "Балтгеоком - поставки геосинтетических материалов по всей России.", 
#     content: "<p>контент о компании</p>", 
#     menu_order: 1},
#   { menu_title: "Каталог продукции", 
#     url: "geosinteticheskie-materialy-katalog", 
#     h1: "Каталог Геосинтетических материалов",
#     title: "Геотекстиль, дорнит виды/геосинтентетические материалы каталог/Балтгеоком",
#     keywords: "геотекстиль дорнит геотекстиль дорнит технические характеристики укладка геотекстиля технология
#     балтгеоком тканое полотно объемная решетка геосетки стеклосетка базальтовая сетка геоматы габионы
#     газонная решетка анкер каталог геосинтетических материалов" ,
#     description: "Балтгеоком - геотекстиль, дорнит, геосетки, георешетки, геоматы, габионы выбрать по плотности, разрывным нагрузкам,  геотекстиль для фундамента, кровли", 
#     content: "<p>контент</p>", 
#     menu_order: 2},
#   { menu_title: "Техподдержка", 
#     url: "tehnicheskaja-podderzhka-harakteristiki-geotekstil-dornit", 
#     h1: "Технические характеристики  геотекстиль дорнит",
#     title: "Геотекстиль дорнит технические характеристики/Балтгеоком/",
#     keywords: "геотекстиль дорнит геотекстиль дорнит технические характеристики укладка геотекстиля технология балтгеоком тканое полотно объемная решетка
#     геосетки стеклосетка базальтовая сетка геоматы габионы газонная решетка анкер" ,
#     description: "Техническая поддержка проектировщиков по выбору геосинтетических материалов, форум для строителей о геосинтеческих материалов, задать вопрос, какая допустимая плотность на разрыв ГОСТ.", 
#     content: "<p>контент</p>", 
#     menu_order: 3},
#   { menu_title: "Услуги", 
#     url: "tehnologija-ukladka-geotekstilja", 
#     h1: "Геотекстиль технология укладки и производства",
#     title: "Укладка геотекстиля технология/производство геотекстиля/балтгеоком",
#     keywords: "геотекстиль дорнит геотекстиль дорнит технические характеристики укладка геотекстиля технология
#     балтгеоком тканое полотно объемная решетка геосетки стеклосетка базальтовая сетка геоматы габионы
#     газонная решетка анкер",
#     description: "Производство геосинтетических материалов, технология укладки и область применения геотекстиля", 
#     content: "<p>контент</p>", 
#     menu_order: 4},
#   { menu_title: "Пресс-центр", 
#     url: "primenenie-geosinteticheskih-materialov", 
#     h1: "Портал о геосинтетических материалах для строителей, архитекторов, проектировщиков.",
#     title: "Конструкции автомобильных дорог, железнодорожных путей, устройство дренажных систем, укрепление земляного полотна,  новости.",
#     keywords: "армирование земляного полотна асфальтобетонных покрытий укрепление откосов склонов 
#     укрепление берега естественных искусственных водоемов строительство площадок под высокие нагрузки
#     проектирование конструкций автомобильных железных дорог терминалов логистических центров устройство дренажных противоэрозийных систем
#     строительство альтернативных зеленых парковок экопарковка площадках разработки области механики грунтов инженерной геологии расчетов земляного полотна 
#     дорожных одежд свойств поведении геосинтетических материалов повышение квалификации обучение сотрудников проектных институтов расчетам земляного полотна с применением современных программных продуктов" ,
#     description: "Разработки в области механики грунтов, инженерной геологии и расчетов земляного полотна и дорожных одежд, свойств и поведении геосинтетических материалов", 
#     content: "<p>контент</p>", 
#     menu_order: 5},
#   { url: "zakaz", 
#     h1: "Разместить заказ.",
#     content: "<p>контент</p>"}
# ])

# puts 'Delete Products'
# Product.delete_all

# puts 'Create Products'
# Product.create([
#     { title: "1. Геотекстиль иглопробивной БГК-ИП", 
#     subtitle: "- нетканный материал из синтетических волокон, применяется повсеместно в строительстве", 
#     desc_col1: "• Химически стойкий • Отлично пропускает воду • Различается по плотности Выдерживает нагрузки",
#     desc_col2: "тут будет ТАБЛИЦА",
#     desc_full: "тут будет полное описание" , 
#     prop1: true,
#     prop2: true,
#     prop3: false,
#     prop4: false,
#     prop5: true,
#     prop6: true},
#     { title: "2. Другой товар title", 
#     subtitle: "другой подзаголовок subtitle", 
#     desc_col1: "другое desc_col1",
#     desc_col2: "другой desc_col2",
#     desc_full: "другой desc_full" , 
#     prop1: true,
#     prop2: true,
#     prop3: true,
#     prop4: true,
#     prop5: true,
#     prop6: true}
# ])

