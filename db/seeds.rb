# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

escale_des_saveurs = { name: "L'escale des saveurs", address: "149 Avenue de la République, 59110 La Madeleine", category: "french", phone_number: "03 20 51 90 48" }
chez_max = { name: "Chez Max", address: "164 Rue Solférino, 59800 Lille", category: "french", phone_number: "03 20 77 59 86" }
it_trattoria = { name: "It Restaurant", address: "C.Cial Héron Parc, Rue de la Vague, 59650 Villeneuve-d'AscqC.Cial Héron Parc, Rue de la Vague, 59650 Villeneuve-d'Ascq", category: "italian", phone_number: "03 28 38 83 47" }
aoyama = { name: "Aoyama", address: "70 Rue de Gand, 59800 Lille", category: "japanese", phone_number: "03 04 05 06 07" }
fiancee_du_pirate = { name: "La Fiancée du Pirate", address: "54 Rue du Commerce, 59650 Villeneuve-d'Ascq", category: "belgian", phone_number: "03 20 91 41 89" }

[ escale_des_saveurs, chez_max, it_trattoria, aoyama, fiancee_du_pirate ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
