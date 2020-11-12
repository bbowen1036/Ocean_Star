# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
Product.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

u1 = User.create!( first_name: "Brian", last_name: "Bowen", password: "password", email: "user1@aa.io")
u2 = User.create!( first_name: "John", last_name: "Smith", password: "password", email: "user2@aa.io")
u3 = User.create!( first_name: "Jill", last_name: "Smith", password: "password", email: "user3@aa.io")
u4 = User.create!( first_name: "Jennifer", last_name: "Smith", password: "password", email: "user4@aa.io")
u5 = User.create!( first_name: "Jack", last_name: "Smith", password: "password", email: "user5@aa.io")
demo = User.create!( first_name: "Guest", last_name: "Demo", password: "password", email: "Hello@OceanStar.com")

# Categories
c1 = Category.create!( name: "Seafood")
c2 = Category.create!( name: "Meat")
c3 = Category.create!( name: "Produce")
c4 = Category.create!( name: "Meal Kit")
c5 = Category.create!( name: "Bakery")
c6 = Category.create!( name: "Pantry")

# Products - Seafood
product1 = Product.create!( name: "Local Wild King Salmon 2PC 6OZ Portions", price: "23.95", description: "Help us support our local fishermen and eat the very best salmon around! Sushi-Grade", category_id: "1")
product2 = Product.create!( name: "Tuna Steaks, Yellowfin 1 LB - Skinless", price: "22.95", description: "High-grade Yellowfin Tuna Steaks: skin off & bloodline out.", category_id: "1")
product3 = Product.create!( name: "Sardines (MONTEREY, CA) - 2LB", price: "9.95", description: "Fresh sardines form Monterey!", category_id: "1")
product4 = Product.create!( name: "Halibut Cheeks (AK) - LB", price: "19.95", description: "Line caught Halibut", category_id: "1")
product5 = Product.create!( name: "Local Wild Black Cod (SABLEFISH) - 6OZ Portions (PACK OF 2)", price: "18.25", description: "Local Trap Caught Black Cod Fillet - Landed from the F/V Kvins.  Rich white meat that's nearly impossible to overcook.", category_id: "1")
product6 = Product.create!( name: "Yellowtail Amberjack Fillet (NZ Ike Jime) - 8oz", price: "10.95", description: "Ike Jime New Zealand Kingfish (Yellowtail Amberjack).  This fish is bled with the Japanese method of Ike Jime making it absolutely perfect for raw preparations including sushi.  This is supremely high quality Yellowtail!", category_id: "1")
product7 = Product.create!( name: "Whole Striped Bass 1-1.5lb", price: "11.95", description: "Whole true striped bass farmed in Baja California.  These will be scaled and gutted and ready for your grill, steamer or pan.", category_id: "1")
product8 = Product.create!( name: "Grand Sushi/Sashimi Kit", price: "150", description: "A kit complete with everything needed to take your sushi game to the next level.", category_id: "1")
product9 = Product.create!( name: "Branzino Whole - ~1 lb", price: "9.50", description: "Whole Farmed Branzino from Turkey.", category_id: "1")
product10 = Product.create!( name: "Petrale Sole Fillet - per lb", price: "14.50", description: "Hand cut fillets.  Clean, simple and easy to cook.", category_id: "1")
product11 = Product.create!( name: "Classic White Sturgeon Caviar - 1oz", price: "68", description: "This medium black pearl is slightly smaller than the royal grade, and is craved for its creamy “sea butter” characteristics, as described by caviar-lover Drew Barrymore. Acipenser Transmontanous inhabits the Eastern Pacific Ocean from Alaska to the Baja peninsula. Matures 7-9 years, 5-6 feet in length and 80-100 lbs", category_id: "1")
product12 = Product.create!( name: "Spanish Octopus 6-8 lbs - ea", price: "72", description: "Frozen Spanish trap/pot caught octopus.  Will be between 6-8 lbs each.", category_id: "1")
product13 = Product.create!( name: "Gulf Shrimp U10 - Head On - 4 lb box", price: "44.95", description: "Individually frozen whole U10 white shrimp from Galveston, TX.  Comes in a 4 lb box.", category_id: "1")
product14 = Product.create!( name: "Uni Tray (A Grade)- 200g", price: "80", description: "Pacific West Coast A grade Uni - Sourced from various locations between Alaska, Ft. Bragg, Santa Barbara, Baja California", category_id: "1")
product15 = Product.create!( name: "Shigoku Oysters by the dozen", price: "27", description: "Beautiful medium Brine Oysters from the Pacific Northwest", category_id: "1")
product16 = Product.create!( name: "Abalone 3-4oz", price: "8.50", description: "California farmed red abalone. Sushi-Grade.", category_id: "1")
product17 = Product.create!( name: "Wasabi Root (Half Moon Bay) - each", price: "40.50", description: "2-3oz each piece", category_id: "1")
product18 = Product.create!( name: "Monkfish Fillets - 1lb", price: "11.95", description: "Just flown in from Boston - Monkfish is also known as the poor man's lobster.", category_id: "1")
product19 = Product.create!( name: "Kampachi Fillet - 1lb", price: "9.95", description: "Sushi-Grade", category_id: "1")
product20 = Product.create!( name: "Crab, Cocktail Claws (Jonah) - 2 lb bag", price: "39.95", description: "Frozen Jonah Crab Cocktail claws.  Base shell removed and ready to eat.  2 lb bags", category_id: "1")


# Products - Meat

product21 = Product.create!( name: "Eggs (Rolling Oaks Ranch) - Dozen", price: 12.50, description: "Corn-Fed, Locally-Raised, Humanely-Treated", category_id: "2")
product22 = Product.create!( name: "Biagio Whole Chicken - ~3.25lbs", price: 14.95, description: "Corn-Fed, Locally-Raised, Humanely-Treated", category_id: "2")
product23 = Product.create!( name: "Biagio Cornish Hen", price: 12.50, description: "Corn-Fed, Locally-Raised, Humanely-Treated", category_id: "2")
product24 = Product.create!( name: "Biagio Cornish Hen", price: 12.50, description: 'Corn-Fed, Locally-Raised, Humanely-Treated' , category_id: "2")
product25 = Product.create!( name: "BBQ Chicken Breast (Cochon Volant) - LB", price: 19, description: "This comes in a sealed vacuum bag.  To serve, only simmer whole bag in water for 15 minutes, then cut open and it's ready to eat.  Dress with your Cochon BBQ sauce or eat on it own." , category_id: "2")
product26 = Product.create!( name: "Wolfe Ranch Quail - 2ea (12oz per bird)", price: 24, description: "2 birds per package.", category_id: "2")
product27 = Product.create!( name: "Wolfe Ranch Quail - Semi-Boneless Pack of 2", price: 26, description: "Wings & Leg Attached", category_id: "2")
product28 = Product.create!( name: "Biagio Duck Legs (2pk)", price: 12, description: "Local CA raised Muscovy duck north of Stockton.  Air chilled.  Antibiotic free.  No animal feed.", category_id: "2")
product29 = Product.create!( name: "Biagio Duck Breasts (2pk)", price: 25.95, description: "Local CA raised Muscovy duck north of Stockton.  Air chilled.  Antibiotic free.  No animal feed.", category_id: "2")
product30 = Product.create!( name: "Grassfed NY Steak (Richards) - 12oz", price: 27.95, description: "Grassfed, grain finished", category_id: "2")
product31 = Product.create!( name: "Grassfed Ground Beef (Richards) - 1lb", price: 9.95, description: "Ground brisket and chuck blend", category_id: "2")
product32 = Product.create!( name: "Bone-In Grassfed Ribeye (Cream Co) - 14oz", price: 30.95, description: "Chef's Favorite!", category_id: "2")
product33 = Product.create!( name: "Grass-Fed Beef Fillet (D'Artagnan) - 6oz", price: 17.50, description: "Treat yourself", category_id: "2")
product34 = Product.create!( name: "Flannery Dry Aged Ribeye Steak USDA Prime - 12oz", price: 32, description: "Midwestern Dry Aged Ribeye Steak - USDA Prime", category_id: "2")
product35 = Product.create!( name: "Flannery Beef Tenderloin USDA Prime - 8oz", price: 28.95, description: "Midwestern Filet Mignon", category_id: "2")
product36 = Product.create!( name: "Flannery Ground Beef - 16oz", price: 9.95, description: "Best Burgers in Town!", category_id: "2")
product37 = Product.create!( name: "Flannery Dry Aged NY Steak USDA Prime - 12oz", price: 39, description: "California Reserve Dry Aged New York Steak", category_id: "2")
product38 = Product.create!( name: "Beef Marrow Bones - Split - 4pc", price: 16.95, description: 'YUM!', category_id: "2")

# Products - Produce

product39 = Product.create!( name: "Sun Gold Tomatoes (Riverdog Farm)- bskt", price: 8.50, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product40 = Product.create!( name: 'Black Plum Tomatoes (Riverdog Farm) - bskt', price: 7.50, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product41 = Product.create!( name: 'Heirloom Tomato Basket - 5lb', price: 30, description: 'Assortment of Heirloom and Cherry Tomatoes from our farms', category_id: "3")
product42 = Product.create!( name: 'Baby Arugula (Riverdog Farm) - 0.5lbs', price: 5.95, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product43 = Product.create!( name: 'Star Route Farms Little Gem Heads - 3ea', price: 8.95, description: "Marin County", category_id: "3")
product44 = Product.create!( name: 'Green Cabbage (Riverdog Farm) - 1 head', price: 3.95, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product45 = Product.create!( name: 'Red Gem Lettuce (Star Route Farms) - 2 heads', price: 7.95, description: 'From Bolinas, CA- Organic Certified', category_id: "3")
product46 = Product.create!( name: 'Spaghetti Squash (Lonely Mountain Farm)- 1 ea', price: 6.50, description: 'Lonely Mountain Farm in Watsonville, CA is a member of California Certified Organic Farmers (CCOF).', category_id: "3")
product47 = Product.create!( name: 'Butternut Squash (Lonely Mountain Farm)- 1 ea', price: 6.50, description: 'Lonely Mountain Farm in Watsonville, CA is a member of California Certified Organic Farmers (CCOF).', category_id: "3")
product48 = Product.create!( name: 'Sugar Pie Squash (Lonely Mountain Farm)- 1 ea', price: 6.50, description: 'Lonely Mountain Farm in Watsonville, CA is a member of California Certified Organic Farmers (CCOF).', category_id: "3")
product49 = Product.create!( name: 'Autumn Produce Box', price: 40, description: 'Seasonal Vegetables from our Local Farmers hand-sorted by our chefs.', category_id: "3")
product50 = Product.create!( name: 'Baby Parsnips (Lonely Mountain Farm)- 1 Bu.', price: 5.95, description: "Fresh from the farm", category_id: "3")
product51 = Product.create!( name: 'Brussels Sprouts (Iacopi) - 2lb', price: 6.50, description: 'Fresh from the farm', category_id: "3")
product52 = Product.create!( name: 'Chanterelles (Domestic) - lb', price: 15.75, description: "Pacific NorthWest", category_id: "3")
product53 = Product.create!( name: 'Burgundy Summer Truffles', price: 45, description: "Tuber Aestivum- known as the cook's truffle- is the most common species of truffle and native to the United Kingdom. This truffle is regarded as the mildest of the truffle species. As opposed to the traditional use of truffles to sparingly enhance the flavor of a dish, the summer burgundy truffle should be cooked as any ordinary mushroom.", category_id: "3")
product54 = Product.create!( name: 'Black Trumpet Mushrooms (Euro) - 1/2lb', price: 18.95, description: 'Just in from Bulgaria.  A harbinger of winter mushroom season.  Wonderful deep forest flavor.  Great with meats and meaty fish like wild striped bass', category_id: "3")
product55 = Product.create!( name: 'Fresh Dulse - Monterey Bay Seaweeds - Qt', price: 23, description: 'Wild Foraged', category_id: "3")
product56 = Product.create!( name: ' Fresh Sea Lettuce - Monterey Bay Seaweeds - Qt', price: 23, description: 'Wild Foraged', category_id: "3")