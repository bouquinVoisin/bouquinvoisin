# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email:"sebastien@hotmail.fr", password: "foobar", name: "Sebastien Lille", date_of_birth: 16/06/1987, address: "58 rue de la Barre, Lille")
User.create(email:"leila_06@hotmail.com", password: "foobar", name: "Leila Paris", date_of_birth: 06/07/1990, address: "78 rue Gay Lussac, 75005")
User.create(email:"rombaut.se@gmail.com", password: "foobar", name: "Sebastien Paris", date_of_birth: 16/06/1987, address: "28 rue Traversière, 75012")
User.create(email:"leila.chaouih@gmail.com", password: "foobar", name: "Leila Région Parisienne", date_of_birth: 06/07/1990, address: "5 impasse des Sablons, 95290")
User.create(email:"sophie.tochon@gmail.com", password: "foobar", name: "Sophie", date_of_birth: 12/9/1988, address: "Place de la Nation, 75011")
User.create(email:"fannyhenno@gmail.com", password: "foobar", name: "Fanny", date_of_birth: 10/03/1986, address: "Lomme")
User.create(email:"fabien.laroche89@gmail.com", password: "foobar", name: "Fabien", date_of_birth: 01/06/1982, address: "Dempasar, Bali")


Review.create(book_title:"L'étranger", book_author:"Albert Camus", book_category:"Classique", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget est id est facilisis eleifend. Vivamus ipsum augue, vulputate id molestie nec, egestas nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc elementum maximus tempor. Ut viverra, ligula vel eleifend efficitur, nisi tortor placerat urna, ac condimentum nunc nulla quis dui. Etiam massa sem, vehicula eu pulvinar vitae, blandit in sem. Vestibulum eget fringilla velit, sed congue nisi. Curabitur eget porttitor dui. Nulla rutrum erat nec feugiat gravida. Mauris semper consectetur nisi, et faucibus erat tristique eget. Morbi non hendrerit tortor, at tincidunt sem. Curabitur quis lacus nec purus pellentesque mollis. Integer ac ante massa. Etiam tincidunt nunc ac lectus luctus, vitae placerat arcu placerat. ", user_id: 1)
