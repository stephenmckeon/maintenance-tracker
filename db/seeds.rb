Category.destroy_all

puts "Creating categories..."

Category.create(name: "Septic", code: "septic")
Category.create(name: "Softener", code: "softener")
Category.create(name: "Water Heater", code: "water_heater")

puts "Categories seeded successfully."
