# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email:"sebastien.rombaut@hotmail.fr", password: "foobar", name: "Sebastien Lille", date_of_birth: 16/06/1987, postal_code:"59800", address: "58 rue de la Barre, Lille")
User.create(email:"leila_06@hotmail.com", password: "foobar", name: "Leila Paris", date_of_birth: 06/07/1990, postal_code:"75005", address: "78 rue Gay Lussac")
User.create(email:"rombaut.se@gmail.com", password: "foobar", name: "Sebastien Paris", date_of_birth: 16/06/1987, postal_code:"75012", address: "28 rue Traversière")
User.create(email:"leila.chaouih@gmail.com", password: "foobar", name: "Leila Région Parisienne", date_of_birth: 06/07/1990, postal_code:"95290", address: "5 impasse des Sablons")
User.create(email:"sophie.tochon@gmail.com", password: "foobar", name: "Sophie", date_of_birth: 12/9/1988, postal_code:"75011", address: "Place de la Nation")
User.create(email:"fannyhenno@gmail.com", password: "foobar", name: "Fanny", date_of_birth: 10/03/1986, postal_code:"59160", address: "Lomme")
User.create(email:"fabien.laroche89@gmail.com", password: "foobar", name: "Fabien", date_of_birth: 01/06/1982, postal_code:"13002", address: "Marseille")



Review.create(book_title:"L'Etre et le Néant ", book_author:"Jean-Paul Sartre", book_cover:"https://images-na.ssl-images-amazon.com/images/I/41OPWHqvyFL._SX319_BO1,204,203,200_.jpg", book_category:"Roman", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 1)
Review.create(book_title:"Le Nom de la rose ", book_author:"Umberto Eco", book_cover:"https://images-na.ssl-images-amazon.com/images/I/5124EFQrRGL._SX307_BO1,204,203,200_.jpg", book_category:"Roman", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 2)
Review.create(book_title:"Paroles", book_author:"Jacques Prévert", book_cover:"https://www.images-booknode.com/book_cover/2/paroles-2293-264-432.jpg", book_category:"Roman", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 3)
Review.create(book_title:"Alcools", book_author:"Guillaume Apollinaire", book_cover:"http://images-chapitre.com/ima2/original/644/332644_12262527.jpg", book_category:"Roman", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 4)
Review.create(book_title:"Le Journal d'Anne Frank ", book_author:"Het Achterhuis", book_cover:"https://c1.staticflickr.com/7/6043/5885011835_99186e96cf.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 5)
Review.create(book_title:"Tristes tropiques ", book_author:"Claude Lévi-Strauss", book_cover:"https://c1.staticflickr.com/7/6043/5885011835_99186e96cf.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 6)
Review.create(book_title:"Le Meilleur des mondes ", book_author:"Aldous Huxley", book_cover:"https://images-na.ssl-images-amazon.com/images/I/511KW0qCjCL._SX303_BO1,204,203,200_.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 7)
Review.create(book_title:"1984", book_author:"George Orwell", book_cover:"http://images-chapitre.com/ima3/original/782/209782_12238672.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 1)
Review.create(book_title:"La Cantatrice chauve", book_author:"Eugène Ionesco", book_cover:"http://static.fnac-static.com/multimedia/images_produits/ZoomPE/3/6/3/9782070362363.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 2)
Review.create(book_title:"Trois essais sur la théorie sexuelle ", book_author:"Sigmund Freud", book_cover:"http://ref.lamartinieregroupe.com/media/9782757820599/grande/103441_couverture_Hres_0.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 3)
Review.create(book_title:"L'Œuvre au noir ", book_author:"Marguerite Yourcenar", book_cover:"https://www.images-booknode.com/book_cover/3/full/l--uvre-au-noir-2972.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 4)
Review.create(book_title:"Lolita", book_author:"Vladimir Nabokov", book_cover:"https://www.babelio.com/couv/CVT_Lolita_3981.jpeg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 5)
Review.create(book_title:"Ulysse", book_author:" James Joyce", book_cover:"https://i.pinimg.com/474x/53/f2/4c/53f24ca9df59d8c3bcdb1b13193bc760--james-joyce-james-darcy.jpg", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 6)


Review.create(book_title:"L'étranger", book_author:"Albert Camus", book_cover:"https://books.google.co.id/books/content?id=aQCSjwEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73J1CvjF-Q2SjJUXHF2Ng4xh-OV-acScxVRQTjzGheZX0RfN0HVlG7uxc-MI5MOKpmeVPFDVsGF03h2-4zfiwoiwphy7Vs8u1XuDkEgIftxOjb5GTPyel6n7-j3kN4R3u45coRQ", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 1)
Review.create(book_title:"Du côté de chez Swann ", book_author:"Marcel Proust", book_cover:"https://books.google.co.id/books/content?id=kI0SrgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71cYYxYoHKHLq30I0M2P5ap_AcEZQ95E_qq8X0mdxTsMMzr3EqyjC7otXhfrySwhRBucWKUiYaRJBG7tSSF687wQxdRxnntRnv1Ld4qYLnNnl1Zi7Sb8zAJkr4qaEOJmdIjgRHt", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 2)
Review.create(book_title:"Le Procès", book_author:"Franz Kafka", book_cover:"https://books.google.co.id/books?id=q3DcCwAAQBAJ&printsec=frontcover", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 3)
Review.create(book_title:"Le Petit Prince", book_author:"Antoine de Saint-Exupéry", book_cover:"https://books.google.co.id/books?id=SwQHBgAAQBAJ&printsec=frontcover", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 4)
Review.create(book_title:"La Condition Humaine", book_author:"André Malraux", book_cover:"https://books.google.co.id/books/content?id=yO-oOQAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73ZFNH1IcZzdZUUgeNm8d4RGxewrWLsFYFeCTpGUP9sbV19FA4aGRVXgYvDbkXOSVKXW7vrf4Ya82hEjQxs1aWpWVJ-VoD6IL0tOZHl4chyoEKRbHACVKUbSqE5S7noaUOB2blF", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 5)
Review.create(book_title:"Voyage au bout de la nuit", book_author:"Céline", book_cover:"https://books.google.co.id/books/content?id=AikmAQAAMAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71PeO4LLCc8P1ErtsBCH1m8xv21NWgmlmVP4pZaFqcQ7Ayoaetghkb2xsrTj2MtrhWW3NN_dXxtiV_ZgQzl_FwdiTm9KvXsofvjJ-QZs-at0IRav6Y", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 6)
Review.create(book_title:"Les Raisins de la colère ", book_author:"John Steinbeck", book_cover:"https://books.google.co.id/books/content?id=jgnDxF-YvpUC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72peh45kdpJAcCtPdLoCw4AuzD6j8rkqp4JMt2MYYhJT7Po3gzl_M6nQM5Y_vnG-mhhMvW5fxvBHh_goHzpk4ozPe2JWliP7z2vNHAkOAzB_KHyfQsdnzUQdkHeifF5vLoRWPS9", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 1)
Review.create(book_title:"Pour qui sonne le glas", book_author:"Ernest Hemingway", book_cover:"https://books.google.co.id/googlebooks/images/no_cover_thumb.gif", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 2)
Review.create(book_title:"Le Grand Meaulnes ", book_author:"Alain-Fournier", book_cover:"https://books.google.co.id/books/content?id=IHxNDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73s3vUA9tGpKZiIif3GiIRxFHdxgNRkzDNGJ5v8X9jzcP18x7Xwu7c_0FTp1iCt_BEE4inK4eARPKgX5DlNI1DNq9faa2A71nM3m09BL1qkv1scdKCMRoIxcczNBZhloiT6X_0D", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 3)
Review.create(book_title:"L'Écume des jours ", book_author:"Boris Vian", book_cover:"https://books.google.co.id/books/content?id=WhSW8MIdQnoC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72r9Bq7V-Qc4jqYgMReFOlmPdzdjXgVCiJwlk9QweWmvlMn9JYJqbb9XwkUWv9GcuK-863BSDAS8qH-YLWHCEc2aDSKdeMtodj6lHP8ENP_Ke5-WhFReEDK_Cu92SfHxcjfMm9J", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 4)
Review.create(book_title:"Le Deuxième Sexe, partie 1 ", book_author:"Simone de Beauvoir", book_cover:"https://books.google.co.id/books/content?id=MWXPAgAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71NHZkdGoRLpmu-Ma7JI7UWlzMj21l8tEJO3yZ6m69QJ7A-qtUYns1Ud6pLpq8bbBq7gjV_SENNT3UcDXPdwsFUgIUSStjmusUfwGrakGAOXWWmGj0aJfaqJsFWcP1jeY9jCdFZ", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 5)
Review.create(book_title:"En attendant Godot", book_author:"Samuel Beckett", book_cover:"https://books.google.co.id/books/content?id=DZz-AgAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71-_AAvxRnNDlVIhGMJXcjaf7Xzp798JSSf-R7-dH1_B1Sg5DIqAq9W8Q9ulByo62ygvFi_cFNUJk-E-7icFNMxsu6Es9meyWWD3BPHE2Qz3bnBrnnhjk_cgWxAPU9aW0otJqmb", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 6)
