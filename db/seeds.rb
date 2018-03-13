# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email:"michel@bv.com", password: "azertyui", name: "Michel", date_of_birth: 12/12/1980, address: "75018")
User.create(email:"john@bv.com", password: "azertyui", name: "John", date_of_birth: 12/12/1980, address: "78 rue Gay Lussac, 75005")
User.create(email:"Alice@bv.com", password: "azertyui", name: "Alice", date_of_birth: 12/12/1980, address: "75019")
User.create(email:"Charlotte@bv.com", password: "azertyui", name: "Charlotte", date_of_birth: 12/12/1980, address: "30 rue de Thionville, Paris 75019")
User.create(email:"Anne@bv.com", password: "azertyui", name: "Anne", date_of_birth: 12/12/1980, address: "6 rue de Castellane, 75009")
User.create(email:"Valentin@bv.com", password: "azertyui", name: "Valentin", date_of_birth: 12/12/1980, address: "34 rue des Martyrs, 75009")
User.create(email:"Seb@bv.com", password: "azertyui", name: "Seb", date_of_birth: 12/12/1980, address: "75009")
User.create(email:"Lei@bv.com", password: "azertyui", name: "Lei", date_of_birth: 12/12/1980, address: "75020")
User.create(email:"fab@bv.com", password: "azertyui", name: "Fab", date_of_birth: 12/12/1980, address: "impasse Poule, 75020")
User.create(email:"Fanny@bv.com", password: "azertyui", name: "Fanny", date_of_birth: 12/12/1980, address: "rue Gay Lussac, 75005")


Book.create(title:"L'étranger", author:"Albert Camus", category:"Classique")
Book.create(title:"Du côté de chez Swann ", author:"Marcel Proust", category:"Classique")
Book.create(title:"Le Procès", author:"Franz Kafka", category:"Classique")
Book.create(title:"Le Petit Prince", author:"Antoine de Saint-Exupéry", category:"Classique")
Book.create(title:"La Condition Humaine", author:"André Malraux", category:"Classique")
Book.create(title:"Voyage au bout de la nuit", author:"Céline", category:"Classique")
Book.create(title:"Les Raisins de la colère ", author:"John Steinbeck", category:"Classique")
Book.create(title:"Pour qui sonne le glas", author:"Ernest Hemingway", category:"Classique")
Book.create(title:"Le Grand Meaulnes ", author:"Alain-Fournier", category:"Classique")
Book.create(title:"L'Écume des jours ", author:"Boris Vian", category:"Classique")
Book.create(title:"Le Deuxième Sexe, partie 1 ", author:"Simone de Beauvoir", category:"Classique")
Book.create(title:"En attendant Godot", author:"Samuel Beckett", category:"Classique")