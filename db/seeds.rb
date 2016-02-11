#encoding: utf-8

puts 'Delete Pages'
Page.delete_all

puts 'Create Pages'
Page.create([
  { title: "О компании", keywords: "компания, балтгеоком",
  	description: "О компании Балтгеоком", url: "about", content: "<p>контент о компании</p>"},
  { title: "Каталог продукции", keywords: "каталог, балтгеоком",
  	description: "Каталог продукции Балтгеоком", url: "catalog", content: "<p>контент каталог продукции</p>"},
  { title: "Услуги", keywords: "услуги, балтгеоком",
  	description: "Услуги компании Балтгеоком", url: "services", content: "<p>контент услуги компании</p>"},
  { title: "Пресс-центр", keywords: "новости, балтгеоком",
  	description: "Новости компании Балтгеоком", url: "news", content: "<p>контент новости</p>"},
  { title: "Техподдержка", keywords: "техподдержка, балтгеоком",
  	description: "Техподдержка компании Балтгеоком", url: "support", content: "<p>контент о техподдержке</p>"}
])

