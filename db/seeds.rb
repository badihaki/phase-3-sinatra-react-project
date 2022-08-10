puts "🌱 Seeding spices..."

# Seed your database here
# Restaurants
restaurant_a = Restaurant.create(
    name: "The King Crab's Crust",
    city: "Underwater"
)
restaurant_b = Restaurant.create(
    name: "LA La Fontismo",
    city: "Los Angeles"
)
restaurant_c = Restaurant.create(
    name: "Foxy Roxy's Moxy",
    city: "Atlanta"
)

# Bartenders
bartender_a = Bartender.create(
    name: "Dave Rigdets",
    handle: "Super Dave",
    restaurant_id: restaurant_c.id
)
bartender_b = Bartender.create(
    name: "Octonick Amorphoshorts",
    handle: "Crazy Legs",
    restaurant_id: restaurant_a.id
)
bartender_c = Bartender.create(
    name: "Bridget Townsend",
    handle: "Gambling Girl",
    restaurant_id: restaurant_b.id
)
bartender_d = Bartender.create(
    name: "Petulia Steelnueghts",
    handle: "Killer Squirrel Girl",
    restaurant_id: restaurant_a.id
)

# cocktails
cocktail_a = Cocktail.create(
    name: "The Lusty Bride",
    description: "A play on Old Fashion",
    bartender_id: bartender_b.id
)
cocktail_b = Cocktail.create(
    name: "Super-Marge",
    description: "A better margharita",
    bartender_id: bartender_a.id
)
cocktail_d = Cocktail.create(
    name: "Red Panda",
    description: "A sour-sweet cherry margharita",
    bartender_id: bartender_d.id
)
cocktail_c = Cocktail.create(
    name: "The Final Sayso",
    description: "A play on The Last Word",
    bartender_id: bartender_c.id
)
cocktail_e = Cocktail.create(
    name: "NY's Finest",
    description: "A smoky manhattan",
    bartender_id: bartender_b.id
)
cocktail_f = Cocktail.create(
    name: "Breaking and Entering",
    description: "An Atlanta Classic",
    bartender_id: bartender_a.id
)
cocktail_g = Cocktail.create(
    name: "Red-Tail Hammer",
    description: "Salute to some of the finest",
    bartender_id: bartender_b.id
)
cocktail_h = Cocktail.create(
    name: "The Casino",
    description: "A better Last Word",
    bartender_id: bartender_c.id
)
cocktail_i = Cocktail.create(
    name: "Forever Sunny",
    description: "An islander favorite",
    bartender_id: bartender_d.id
)
cocktail_j = Cocktail.create(
    name: "Yittys Out",
    description: "Lizzo likes this one",
    bartender_id: bartender_b.id
)

puts "✅ Done seeding!"
