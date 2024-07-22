require "faker"

Category.destroy_all
Task.destroy_all

puts "Creating categories..."

septic = Category.create(name: "Septic", code: "septic")
softener = Category.create(name: "Softener", code: "softener")
water_heater = Category.create(name: "Water Heater", code: "water_heater")
hvac = Category.create(name: "HVAC", code: "hvac")
plumbing = Category.create(name: "Plumbing", code: "plumbing")
electrical = Category.create(name: "Electrical", code: "electrical")
roofing = Category.create(name: "Roofing", code: "roofing")
landscaping = Category.create(name: "Landscaping", code: "landscaping")

puts "Categories seeded successfully."

puts "Creating tasks..."

Task.create(category: septic, name: "Drainfield Inspection",
            description: "Inspect the drainfield for proper function.", interval: "yearly")
Task.create(category: septic, name: "Tank Pumping", description: "Pump out the septic tank.", interval: "yearly")
Task.create(category: softener, name: "Salt Refill", description: "Refill the water softener salt.",
            interval: "monthly")
Task.create(category: softener, name: "System Clean", description: "Clean the water softener system.",
            interval: "yearly")
Task.create(category: water_heater, name: "Temperature Check",
            description: "Check and adjust water heater temperature.", interval: "yearly")
Task.create(category: water_heater, name: "Flush Tank", description: "Flush the water heater tank.", interval: "yearly")
Task.create(category: hvac, name: "Filter Replacement", description: "Replace HVAC filters.", interval: "quarterly")
Task.create(category: hvac, name: "System Inspection", description: "Inspect HVAC system for issues.",
            interval: "yearly")
Task.create(category: plumbing, name: "Leak Check", description: "Check for plumbing leaks.", interval: "yearly")
Task.create(category: plumbing, name: "Pipe Insulation", description: "Insulate exposed pipes.", interval: "yearly")
Task.create(category: electrical, name: "Outlet Test", description: "Test all electrical outlets.", interval: "yearly")
Task.create(category: electrical, name: "Circuit Breaker Test", description: "Test circuit breakers.",
            interval: "yearly")
Task.create(category: roofing, name: "Gutter Cleaning", description: "Clean the gutters.", interval: "yearly")
Task.create(category: roofing, name: "Shingle Inspection", description: "Inspect roof shingles for damage.",
            interval: "yearly")
Task.create(category: landscaping, name: "Lawn Mowing", description: "Mow the lawn.", interval: "monthly")
Task.create(category: landscaping, name: "Tree Trimming", description: "Trim trees and bushes.", interval: "quarterly")

puts "Tasks seeded successfully."

puts "Creating completions..."

Task.all.sample(10).each do |task|
  Completion.create(
    task:,
    note: Faker::Lorem.sentence(word_count: 10),
    created_at: Faker::Time.between(from: 2.years.ago, to: Time.now)
  )
end

puts "Completions seeded successfully."
