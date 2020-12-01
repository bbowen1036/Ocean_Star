# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

ActiveRecord::Base.transaction do
  


  Category.delete_all
  Product.delete_all
  Cart.delete_all
  User.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

u1 = User.create!( first_name: "Brian", last_name: "Bowen", password: "password", email: "user1@aa.io")
u2 = User.create!( first_name: "John", last_name: "Smith", password: "password", email: "user2@aa.io")
u3 = User.create!( first_name: "Jill", last_name: "Smith", password: "password", email: "user3@aa.io")
u4 = User.create!( first_name: "Jennifer", last_name: "Smith", password: "password", email: "user4@aa.io")
u5 = User.create!( first_name: "Jack", last_name: "Smith", password: "password", email: "user5@aa.io")
demo = User.create!( first_name: "Guest", last_name: "Demo", password: "password", email: "Hello@OceanStar.com")

cart1 = Cart.create!( user_id: 1)
cart2 = Cart.create!( user_id: 2)
cart3 = Cart.create!( user_id: 3)
cart4 = Cart.create!( user_id: 4)
cart5 = Cart.create!( user_id: 5)
cart6 = Cart.create!( user_id: 6)

# Categories
c1 = Category.create!( name: "Seafood")
c2 = Category.create!( name: "Meat")
c3 = Category.create!( name: "Produce")
c4 = Category.create!( name: "Meal Kit")
c5 = Category.create!( name: "Bakery")
c6 = Category.create!( name: "Pantry")

# Products - Seafood
product1 = Product.new( name: "Local Wild King Salmon 2PC 6OZ Portions", price: "23.95", description: "Help us support our local fishermen and eat the very best salmon around! Sushi-Grade", category_id: "1")
product2 = Product.new( name: "Tuna Steaks, Yellowfin 1 LB - Skinless", price: "22.95", description: "High-grade Yellowfin Tuna Steaks: skin off & bloodline out.", category_id: "1")
product3 = Product.new( name: "Sardines (MONTEREY, CA) - 2LB", price: "9.95", description: "Fresh sardines form Monterey!", category_id: "1")
product4 = Product.new( name: "Halibut Cheeks (AK) - LB", price: "19.95", description: "Line caught Halibut", category_id: "1")
product5 = Product.new( name: "Local Wild Black Cod (SABLEFISH) - 6OZ Portions (PACK OF 2)", price: "18.25", description: "Local Trap Caught Black Cod Fillet - Landed from the F/V Kvins.  Rich white meat that's nearly impossible to overcook.", category_id: "1")
product6 = Product.new( name: "Yellowtail Amberjack Fillet (NZ Ike Jime) - 8oz", price: "10.95", description: "Ike Jime New Zealand Kingfish (Yellowtail Amberjack).  This fish is bled with the Japanese method of Ike Jime making it absolutely perfect for raw preparations including sushi.  This is supremely high quality Yellowtail!", category_id: "1")
product7 = Product.new( name: "Whole Striped Bass 1-1.5lb", price: "11.95", description: "Whole true striped bass farmed in Baja California.  These will be scaled and gutted and ready for your grill, steamer or pan.", category_id: "1")
product8 = Product.new( name: "Grand Sushi/Sashimi Kit", price: "150", description: "A kit complete with everything needed to take your sushi game to the next level.", category_id: "1")
product9 = Product.new( name: "Branzino Whole - ~1 lb", price: "9.50", description: "Whole Farmed Branzino from Turkey.", category_id: "1")
product10 = Product.new( name: "Petrale Sole Fillet - per lb", price: "14.50", description: "Hand cut fillets.  Clean, simple and easy to cook.", category_id: "1")
product11 = Product.new( name: "Classic White Sturgeon Caviar - 1oz", price: "68", description: "This medium black pearl is slightly smaller than the royal grade, and is craved for its creamy “sea butter” characteristics, as described by caviar-lover Drew Barrymore. Acipenser Transmontanous inhabits the Eastern Pacific Ocean from Alaska to the Baja peninsula. Matures 7-9 years, 5-6 feet in length and 80-100 lbs", category_id: "1")
product12 = Product.new( name: "Spanish Octopus 6-8 lbs - ea", price: "72", description: "Frozen Spanish trap/pot caught octopus.  Will be between 6-8 lbs each.", category_id: "1")
product13 = Product.new( name: "Gulf Shrimp U10 - Head On - 4 lb box", price: "44.95", description: "Individually frozen whole U10 white shrimp from Galveston, TX.  Comes in a 4 lb box.", category_id: "1")
product14 = Product.new( name: "Uni Tray (A Grade)- 200g", price: "80", description: "Pacific West Coast A grade Uni - Sourced from various locations between Alaska, Ft. Bragg, Santa Barbara, Baja California", category_id: "1")
product15 = Product.new( name: "Shigoku Oysters by the dozen", price: "27", description: "Beautiful medium Brine Oysters from the Pacific Northwest", category_id: "1")
product16 = Product.new( name: "Abalone 3-4oz", price: "8.50", description: "California farmed red abalone. Sushi-Grade.", category_id: "1")
product17 = Product.new( name: "Wasabi Root (Half Moon Bay) - each", price: "40.50", description: "2-3oz each piece", category_id: "1")
product18 = Product.new( name: "Monkfish Fillets - 1lb", price: "11.95", description: "Just flown in from Boston - Monkfish is also known as the poor man's lobster.", category_id: "1")
product19 = Product.new( name: "Kampachi Fillet - 1lb", price: "9.95", description: "Sushi-Grade", category_id: "1")
product20 = Product.new( name: "Crab, Cocktail Claws (Jonah) - 2 lb bag", price: "39.95", description: "Frozen Jonah Crab Cocktail claws.  Base shell removed and ready to eat.  2 lb bags", category_id: "1")


# Products - Meat

product21 = Product.new( name: "Eggs (Rolling Oaks Ranch) - Dozen", price: 12.50, description: "Corn-Fed, Locally-Raised, Humanely-Treated", category_id: "2")
product22 = Product.new( name: "Biagio Whole Chicken - ~3.25lbs", price: 14.95, description: "Corn-Fed, Locally-Raised, Humanely-Treated", category_id: "2")
product23 = Product.new( name: "Biagio Cornish Hen", price: 12.50, description: "Corn-Fed, Locally-Raised, Humanely-Treated", category_id: "2")
# product24 = Product.new( name: "Biagio Cornish Hen", price: 12.50, description: 'Corn-Fed, Locally-Raised, Humanely-Treated' , category_id: "2")
product25 = Product.new( name: "BBQ Chicken Breast (Cochon Volant) - LB", price: 19, description: "This comes in a sealed vacuum bag.  To serve, only simmer whole bag in water for 15 minutes, then cut open and it's ready to eat.  Dress with your Cochon BBQ sauce or eat on it own." , category_id: "2")
product26 = Product.new( name: "Wolfe Ranch Quail - 2ea (12oz per bird)", price: 24, description: "2 birds per package.", category_id: "2")
product27 = Product.new( name: "Wolfe Ranch Quail - Semi-Boneless Pack of 2", price: 26, description: "Wings & Leg Attached", category_id: "2")
product28 = Product.new( name: "Biagio Duck Legs (2pk)", price: 12, description: "Local CA raised Muscovy duck north of Stockton.  Air chilled.  Antibiotic free.  No animal feed.", category_id: "2")
product29 = Product.new( name: "Biagio Duck Breasts (2pk)", price: 25.95, description: "Local CA raised Muscovy duck north of Stockton.  Air chilled.  Antibiotic free.  No animal feed.", category_id: "2")
product30 = Product.new( name: "Grassfed NY Steak (Richards) - 12oz", price: 27.95, description: "Grassfed, grain finished", category_id: "2")
product31 = Product.new( name: "Grassfed Ground Beef (Richards) - 1lb", price: 9.95, description: "Ground brisket and chuck blend", category_id: "2")
product32 = Product.new( name: "Bone-In Grassfed Ribeye (Cream Co) - 14oz", price: 30.95, description: "Chef's Favorite!", category_id: "2")
product33 = Product.new( name: "Grass-Fed Beef Fillet (D'Artagnan) - 6oz", price: 17.50, description: "Treat yourself", category_id: "2")
product34 = Product.new( name: "Flannery Dry Aged Ribeye Steak USDA Prime - 12oz", price: 32, description: "Midwestern Dry Aged Ribeye Steak - USDA Prime", category_id: "2")
product35 = Product.new( name: "Flannery Beef Tenderloin USDA Prime - 8oz", price: 28.95, description: "Midwestern Filet Mignon", category_id: "2")
product36 = Product.new( name: "Flannery Ground Beef - 16oz", price: 9.95, description: "Best Burgers in Town!", category_id: "2")
product37 = Product.new( name: "Flannery Dry Aged NY Steak USDA Prime - 12oz", price: 39, description: "California Reserve Dry Aged New York Steak", category_id: "2")
product38 = Product.new( name: "Beef Marrow Bones - Split - 4pc", price: 16.95, description: 'YUM!', category_id: "2")

# Products - Produce

product39 = Product.new( name: "Sun Gold Tomatoes (Riverdog Farm)- bskt", price: 8.50, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product40 = Product.new( name: 'Black Plum Tomatoes (Riverdog Farm) - bskt', price: 7.50, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product41 = Product.new( name: 'Heirloom Tomato Basket - 5lb', price: 30, description: 'Assortment of Heirloom and Cherry Tomatoes from our farms', category_id: "3")
product42 = Product.new( name: 'Baby Arugula (Riverdog Farm) - 0.5lbs', price: 5.95, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product43 = Product.new( name: 'Star Route Farms Little Gem Heads - 3ea', price: 8.95, description: "Marin County", category_id: "3")
# product44 = Product.new( name: 'Green Cabbage (Riverdog Farm) - 1 head', price: 3.95, description: 'Riverdog Farm in Guinda, CA is a certified organic farm.', category_id: "3")
product45 = Product.new( name: 'Red Gem Lettuce (Star Route Farms) - 2 heads', price: 7.95, description: 'From Bolinas, CA- Organic Certified', category_id: "3")
product46 = Product.new( name: 'Spaghetti Squash (Lonely Mountain Farm)- 1 ea', price: 6.50, description: 'Lonely Mountain Farm in Watsonville, CA is a member of California Certified Organic Farmers (CCOF).', category_id: "3")
product47 = Product.new( name: 'Butternut Squash (Lonely Mountain Farm)- 1 ea', price: 6.50, description: 'Lonely Mountain Farm in Watsonville, CA is a member of California Certified Organic Farmers (CCOF).', category_id: "3")
product48 = Product.new( name: 'Sugar Pie Squash (Lonely Mountain Farm)- 1 ea', price: 6.50, description: 'Lonely Mountain Farm in Watsonville, CA is a member of California Certified Organic Farmers (CCOF).', category_id: "3")
product49 = Product.new( name: 'Autumn Produce Box', price: 40, description: 'Seasonal Vegetables from our Local Farmers hand-sorted by our chefs.', category_id: "3")
product50 = Product.new( name: 'Baby Parsnips (Lonely Mountain Farm)- 1 Bu.', price: 5.95, description: "Fresh from the farm", category_id: "3")
product51 = Product.new( name: 'Brussels Sprouts (Iacopi) - 2lb', price: 6.50, description: 'Fresh from the farm', category_id: "3")
product52 = Product.new( name: 'Chanterelles (Domestic) - lb', price: 15.75, description: "Pacific NorthWest", category_id: "3")
product53 = Product.new( name: 'Burgundy Summer Truffles', price: 45, description: "Tuber Aestivum- known as the cook's truffle- is the most common species of truffle and native to the United Kingdom. This truffle is regarded as the mildest of the truffle species. As opposed to the traditional use of truffles to sparingly enhance the flavor of a dish, the summer burgundy truffle should be cooked as any ordinary mushroom.", category_id: "3")
product54 = Product.new( name: 'Black Trumpet Mushrooms (Euro) - 1/2lb', price: 18.95, description: 'Just in from Bulgaria.  A harbinger of winter mushroom season.  Wonderful deep forest flavor.  Great with meats and meaty fish like wild striped bass', category_id: "3")
product55 = Product.new( name: 'Fresh Dulse - Monterey Bay Seaweeds - Qt', price: 23, description: 'Wild Foraged', category_id: "3")
product56 = Product.new( name: ' Fresh Sea Lettuce - Monterey Bay Seaweeds - Qt', price: 23, description: 'Wild Foraged', category_id: "3")


# Products - Meal Kit

product57 = Product.new( name: 'Cochon Volant Barbecue Feast', price: 95, description: 'Feeds 3-4 people.', category_id: 4)
product58 = Product.new( name: 'Grand Sushi/Sashimi Kit', price: 150, description: 'A kit complete with everything needed to take your sushi game to the next level.', category_id: 4)
product59 = Product.new( name: 'Classic Reuben Sandwich Kit for Two', price: 39, description: 'Includes everything needed to make 2 delicious Reuben Sandwiches at home.  Rye Bread, Sauerkraut, Pickles, Pastrami, Russian Dressing and Swiss Cheese.  Handcrafted by Chef Mark Dommen of One Market Restaurant.', category_id: 4)
product60 = Product.new( name: 'Pizza Margherita (Zero Zero)', price: 15.95, description: 'Frozen classic margherita pizza from Chef Bruce Hill at Zero Zero - just heat and serve!', category_id: 4)
product61 = Product.new( name: 'Tuna Poke Meal Kit For Two', price: 46, description: 'Ahi Tuna', category_id: 4)
product62 = Product.new( name: 'Burger Kit', price: 51.75, description: 'Step up your grill game', category_id: 4)
product63 = Product.new( name: 'SpiceTribe White Beans, Pancetta + Greens', price: 34.95, description: 'Meal Kit for Two from Spice Tribe', category_id: 4)
product64 = Product.new( name: 'Decadence Box', price: 300, description: 'This is our most luxurious selection.', category_id: 4)
product65 = Product.new( name: 'Minus 8 Vinegar Collection', price: 189, description: 'Barrel Aged for 5 yrs. Assorted flavors.', category_id: 4)
product66 = Product.new( name: 'Chef\'s Selection Box', price: 150, description: 'Our chefs choose the best seasonal ingredients for these boxes. We aim to provide a large variety of our favorite mix of fresh & frozen seafood, produce & specialty ingredients. A great gift idea for a friend, family member, or neighbor.', category_id: 4)
product67 = Product.new( name: 'BBQ Beef Brisket (Cochon Volant) - LB', price: 26, description: 'Prime brisket rubbed with kosher salt and pepper smoked over almond for 14 hours. Sliced. This comes in a sealed vacuum bag. To serve, only simmer whole bag in water for 15 minutes, then cut open and it\'s ready to eat.  Dress with your Cochon BBQ sauce or eat on it own.', category_id: 4)
product68 = Product.new( name: 'BBQ Baby Back Ribs (Cochon Volant) - 1/2 rack', price: 18, description: 'Rubbed and Smoked.  Half rack of ribs.', category_id: 4)
product69 = Product.new( name: 'BBQ Pork Shoulder (Cochon Volant) - LB', price: 18, description: 'Brined for the equivalent of 3 days, the same as the process as the french dish, Petit Sale.  Rubbed with our rib rub and smoked for 8 hours.  Sliced.', category_id: 4)
product70 = Product.new( name: 'Carolina BBQ Sauce (Cochon Volant) - 16oz', price: 9, description: 'A mustard-based sauce with whole mustard seeds and crushed coriander.', category_id: 4)
product71 = Product.new( name: 'Sonoma BBQ Sauce (Cochon Volant) - 16oz', price: 8, description: 'Cochon Volant’s Sonoma Sauce is tomato based and redolent with a variety of chilies balanced with vinegar and citrus.', category_id: 4)
product72 = Product.new( name: 'WTF Hot Sauce (Cochon Volant) - 5oz', price: 6, description: 'Fermented Chilis (Chilis, Salt, Water), Champagne Vinegar Pasilla Pepper, Agave Syrup, And Chipotle.', category_id: 4)
product73 = Product.new( name: 'BBQ Pastrami Short Rib (Cochon Volant) ~1.5lb', price: 37.50, description: 'Cured and smoked.  One full beef short rib rib', category_id: 4)
# product74 = Product.new( name: 'Cochon Volant Barbecue Feast', price: 95, description: 'Feeds 3-4 people.', category_id: 4)


# Products - Bakery

product75 = Product.new( name: 'Pietisserie Pumpkin Pie (Choco Crust)', price: 29.95, description: ' Rewarm in a preheated oven at 350˚ F for 5 to 10 minutes until temperature desired.', category_id: 5)
product76 = Product.new( name: 'Wise Sons Sesame Seeds Challah Buns', price: 8, description: '6 each per pack', category_id: 5)
product77 = Product.new( name: 'Wise Sons Everything Bagels', price: 8, description: '4 pack', category_id: 5)
product78 = Product.new( name: 'Pietisserie Veggie Pot Pie', price: 29.95, description: 'Vegetable broth, onions, garlic, fresh herbs, sweet potatoes, mushrooms, Brussels sprouts, greens, milk, parmesan cheese', category_id: 5)
product79 = Product.new( name: 'Pietisserie Raspberry Chocolate Pie', price: 29.95, description: 'Whole frozen raspberry pie with a chocolate crust from Pietisserie. It\'s their signature pie featured on the Food Network show "The Best Thing I Ever Ate."', category_id: 5)
product80 = Product.new( name: 'Pietisserie Stonefruit Berry Pie', price: 29.95, description: 'Rewarm in a preheated oven at 350˚ F for 5 to 10 minutes until temperature desired.', category_id: 5)
product81 = Product.new( name: 'Pietisserie Pecan Pie', price: 29.95, description: 'Rewarm in a preheated oven at 350˚ F for 5 to 10 minutes until temperature desired.', category_id: 5)
product82 = Product.new( name: 'Pietisserie Apricot Pie', price: 29.95, description: 'Rewarm in a preheated oven at 350˚ F for 5 to 10 minutes until temperature desired.', category_id: 5)
product83 = Product.new( name: 'Pietisserie Cherry Pie', price: 29.95, description: 'Rewarm in a preheated oven at 350˚ F for 5 to 10 minutes until temperature desired.', category_id: 5)
product84 = Product.new( name: 'Toasted Hazelnut Flour (0.5lb)', price: 16.95, description: 'May contain traces of other nuts (almonds, pistachio, walnut, Queensland nut, Pecan, Cashew nut), Sesame, soy and milk.', category_id: 5)
product85 = Product.new( name: 'Capay Mills - Organic Corn Grits - 2lb', price: 9.95, description: 'Reduction-milled from certified organic, nonGMO white flint corn grown in the Sacramento Valley. 100% unsifted whole grain. Milled to a medium-fine meal, suitable for grits, polenta or cornbread', category_id: 5)
product86 = Product.new( name: 'Capay Mills Flour - Big Red Bug - 2lb', price: 9.95, description: 'Blended from 60% Wit Wolkering landrace white wheat and 40% whole grain WB9229 red wheat flour, with 2.5% organic malted barley flour. Big Red Bug (named for our 60- year old combine harvester) is a flavorful, high performance organic whole grain flour blended specifically for long-fermentation sourdough breads.', category_id: 5)
product87 = Product.new( name: 'Pasini Pizza Flour 1kg', price: 4.50, description: 'Pasini pizza flour is engineered to create a pizza crust that is crisp and fragrant. Medium Proofing: 1-2 days.', category_id: 5)
product88 = Product.new( name: 'Pasini Bakery Flour Manitoba 1k', price: 5, description: 'Manitoba Pastry Flour is perfect for the preparation of traditional pastry products: baked cakes, croissants, pandoro, dove, puff pastry and croissants.', category_id: 5)
product89 = Product.new( name: 'Pasini Fresh Pasta Flour 1kg', price: 4.50, description: 'Pasini 00 flour for making fresh pasta allows for short mixing times and maintains its natural yellow coloring for many days without turning grey (oxidizing). The pastry develops coarse, and, therefore, retains sauce better and withstands cooking and double cooking. It also mixes very well with semolina. This flour has been formulated to retain moisture to avoid breaking, especially when filled.', category_id: 5)


# Products - Pantry

product90 = Product.new( name: 'Hand-Sourced Vanilla Beans (Madagascar) - 3 each', price: 9.95, description: 'Fair Trade Vanilla', category_id: 6)
product91 = Product.new( name: 'Long Pepper', price: 16, description: '4oz by volume', category_id: 6)
product92 = Product.new( name: 'Limon Omani', price: 11, description: 'Made by La Boîte for Four Star', category_id: 6)
product93 = Product.new( name: 'Pink Peppercorns', price: 11, description: 'Made by La Boîte for Four Star', category_id: 6)
product94 = Product.new( name: 'White Omani', price: 11, description: 'Limon Omani - A small, dried lime with earthy, citrus, and sour notes, they retain their acidity even in long cooked dishes', category_id: 6)
product95 = Product.new( name: 'Pickled Ginger (All Natural) - 1/4lb', price: 5.95, description: 'Ingredients: Ginger, Water, Salt, Sugar, Vinegar', category_id: 6)
product96 = Product.new( name: 'Yuzu Kosho - Red (2oz)', price: 6.95, description: 'A classic table condiment found throughout Japan, Yakami Orchards Yuzu Kosho has become a secret ingredient of America’s finest chefs. Fresh Yuzu Zest is combined with Fresh Chilies, Sea Salt and Konbu Seaweed to create a bright, spicy flavor profile with a subtle Umami finish. Incredible as a rub on meat & poultry, a wonderful condiment with sushi, add a dab to marinades, salad dressings, soups or eggs, or even toss with pasta. A must try for any Japanese cuisine enthusiast.  Available in red or green chili.', category_id: 6)
product97 = Product.new( name: 'Takuko White Shoyu (750ml)', price: 23.95, description: 'White Shoyu', category_id: 6)
product98 = Product.new( name: 'Black Garlic Molasses (250ml)', price: 18.95, description: 'A standout ingredient for the chef with a keen eye and creative mind, Black Garlic Molasses is a wonderfully complex symphony of flavors playing in perfect harmony. Nutty, savory, dried fruit, roasted garlic undertones, natural sweetness. The applications are endless', category_id: 6)
product99 = Product.new( name: 'Black Sesame Paste (16oz)', price: 11.95, description: 'Nouka Black Sesame Paste is created using a time honored method of first selecting the highest quality black sesame seeds, then slowly boiling the seeds followed by a proprietary grinding method which results in a superb paste that is both uniquely fragrant and has a pleasant mouthfeel.', category_id: 6)
product100 = Product.new( name: 'Natural Meski Olives & Harissa - 125g', price: 7.95, description: 'Natural Meski Olives, Extra Vigin Olive Oil, Garlic, Harissa', category_id: 6)
product101 = Product.new( name: 'Plum Mostarda Condiment (Housemade)', price: 12.95, description: 'Black Kat Plums, Basil, and Black Pepper.', category_id: 6)
product102 = Product.new( name: 'Quince Mostarda Condiment (Housemade)', price: 12.95, description: 'Perfect Charcuterie Condiment!', category_id: 6)
product103 = Product.new( name: '7 Year Risotto Rice - 500g', price: 16, description: 'Aged to perfection... only 1% of Aquerello rice is chosen for aging.', category_id: 6)
product104 = Product.new( name: 'Short-Grain Koshihikari Sushi Rice - lb', price: 2.99, description: 'Best Sushi Rice!', category_id: 6)
product105 = Product.new( name: 'Couscous - M\'Hamsa (500g)', price: 9.95, description: 'In Tunisia, this product is called M’hamsa, which translates into sun-dried wheat grains. Made from a North African semolina made from crushed durum wheat, M’hamsa is produced in the traditional Berber method. Production begins by mixing semolina with olive oil, water, and salt, which is then pushed through screens or a sieve to create small grains, then these are left in the sun to dry.', category_id: 6)
product106 = Product.new( name: 'Black Winter Truffle Juice (400ml)', price: 77, description: 'The truffle juice is obtained from the first cooking of fresh black truffles (Tuber Melanosporum).', category_id: 6)



# Photo Seeds - Seafood

file1 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/LocalKingSalmon_600x.jpg")
  product1.photo.attach(io: file1, filename: "img_salmon.jpg")
  product1.save!
file2 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/yellowfin_tuna_steak.jpg")
  product2.photo.attach(io: file2, filename: 'img-tuna.jpg')
  product2.save!
file3 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/sardines.jpg")
  product3.photo.attach(io: file3, filename: 'img-sardines.jpg')
  product3.save!
file4 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/halibut_cheeks.jpg")
  product4.photo.attach(io: file4, filename: 'img-haliCheek.jpg')
  product4.save!
file5 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/black_cod.jpg")
  product5.photo.attach(io: file5, filename: 'img-blackCod.jpg')
  product5.save!
file6 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/yellowtail_amberjack.jpg")
  product6.photo.attach(io: file6, filename: 'img-amberkack')
  product6.save!
file7 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/whole_striped_bass.jpg")
  product7.photo.attach(io: file7, filename: 'img-wholebass')
  product7.save!
file8 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/SushiKitStuff_600x.jpg")
  product8.photo.attach(io: file8, filename: 'img-sushikit')
  product8.save!
file9 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/branzino.jpg")
  product9.photo.attach(io: file9, filename: 'img-branzino')
  product9.save!
file10 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/petrale_sole_filet.jpg")
  product10.photo.attach(io: file10, filename: 'img-petrale')
  product10.save!
file11 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/caviar.jpg")
  product11.photo.attach(io: file11, filename: 'img-caviar')
  product11.save!
file12 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/octopus.jpg")
  product12.photo.attach(io: file12, filename: 'img-octopus')
  product12.save!
file13 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/shrimp.jpg")
  product13.photo.attach(io: file13, filename: 'img-shrimp')
  product13.save!
file14 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/uni.jpg")
  product14.photo.attach(io: file14, filename: 'img-uni')
  product14.save!
file15 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/shigoku.jpg")
  product15.photo.attach(io: file15, filename: 'img-shigoku')
  product15.save!
file16 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/abalone.jpg")
  product16.photo.attach(io: file16, filename: 'img-abalone')
  product16.save!
file17 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/wasabi.jpg")
  product17.photo.attach(io: file17, filename: 'img-wasabi')
  product17.save!
file18 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/monkfish.jpg")
  product18.photo.attach(io: file18, filename: 'img-monfish')
  product18.save!
file19 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/kampachi.jpg")
  product19.photo.attach(io: file19, filename: 'img-kampachi')
  product19.save!
file20 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/jonahcrab.jpg")
  product20.photo.attach(io: file20, filename: 'img-jonahcrab')
  product20.save!

# Photo Seeds - Meat

file21 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/Eggs_600x.jpg")
  product21.photo.attach(io: file21, filename: 'img-egg')
  product21.save!
file22 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/biagio_whole_chx.jpg")
  product22.photo.attach(io: file22, filename: 'img-wholChx')
  product22.save!
file23 = open("https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/biagioHen.jpg")
  product23.photo.attach(io: file23, filename: 'img-hen')
  product23.save!
file25 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/bbqBreast.jpg')
  product25.photo.attach(io: file25, filename: 'img-bbq')
  product25.save!
file26 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/wolfRanchQual.jpg')
  product26.photo.attach(io: file26, filename: 'img-ql')
  product26.save!
file27 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/wolfQuilBoneless.jpg')
  product27.photo.attach(io: file27, filename: 'img-qlBnls')
  product27.save!
file28 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/bgioDuckLegs.jpg')
  product28.photo.attach(io: file28, filename: 'img-dkleg')
  product28.save!
file29 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/bgiDukBreas.jpg')
  product29.photo.attach(io: file29, filename: 'img-dkbreast')
  product29.save!
file30 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/grassfedSteak.jpg')
  product30.photo.attach(io: file30, filename: 'img-sk')
  product30.save!
file31 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/gBeefRichards.jpg')
  product31.photo.attach(io: file31, filename: 'img-rGB')
  product31.save!
file32 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/ribeteCream.jpg')
  product32.photo.attach(io: file32, filename: 'img-crm')
  product32.save!
file33 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/filletDartan.jpg')
  product33.photo.attach(io: file33, filename: 'img-filetArg')
  product33.save!
file34 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/flanneryribet.jpg')
  product34.photo.attach(io: file34, filename: 'img-flanRib')
  product34.save!
file35 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/flanneryTloin.jpg')
  product35.photo.attach(io: file35, filename: 'flanTl')
  product35.save!
file36 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/flanneryGBeef.jpg')
  product36.photo.attach(io: file36, filename: 'flanGB')
  product36.save!
file37 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/flanneryNY.jpg')
  product37.photo.attach(io: file37, filename: 'flanNY')
  product37.save!
file38 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/marro.jpg')
  product38.photo.attach(io: file38, filename: 'marow')
  product38.save!


# Photo Seeds - Produce

file39 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-riverTomato.jpg')
  product39.photo.attach(io: file39, filename: 'img-rivTom')
  product39.save!
file40 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-riverTom2.jpg')
  product40.photo.attach(io: file40, filename: 'img-rivTom2')
  product40.save!
file41 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-tomBasket.jpg')
  product41.photo.attach(io: file41, filename: 'img-rivBas')
  product41.save!
file42 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-Arugula.jpg')
  product42.photo.attach(io: file42, filename: 'img-arug')
  product42.save!
file43 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-Gems.jpg')
  product43.photo.attach(io: file43, filename: 'img-gem')
  product43.save!

file45 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-redGem.jpg')
  product45.photo.attach(io: file45, filename: 'img-redgem')
  product45.save!
file46 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-SpagSq.jpg')
  product46.photo.attach(io: file46, filename: 'img-spagSq')
  product46.save!
file47 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-bNut.jpg')
  product47.photo.attach(io: file47, filename: 'img-sqBnut')
  product47.save!
file48 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-sugarSq.jpg')
  product48.photo.attach(io: file48, filename: 'img-sqSug')
  product48.save!
file49 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-box.jpg')
  product49.photo.attach(io: file49, filename: 'img-box')
  product49.save!
file50 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-parsnip.jpg')
  product50.photo.attach(io: file50, filename: 'img-parsnip')
  product50.save!
file51 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-brussels.jpg')
  product51.photo.attach(io: file51, filename: 'img-brus')
  product51.save!
file52 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-chanty.jpg')
  product52.photo.attach(io: file52, filename: 'img-canty')
  product52.save!
file53 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-truffle.jpg')
  product53.photo.attach(io: file53, filename: 'img-truf')
  product53.save!
file54 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-btrump.jpg')
  product54.photo.attach(io: file54, filename: 'img-btrum')
  product54.save!
file55 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-seweedred.jpg')
  product55.photo.attach(io: file55, filename: 'img-swdred')
  product55.save!
file56 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/newSeedPhoto/p-sweed.jpg')
  product56.photo.attach(io: file56, filename: 'img-swd')
  product56.save!


  # Photo Seeds - MealKit

file57 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/cochonkit.jpg')
  product57.photo.attach(io: file57, filename: 'img-cohkit')
  product57.save!
file58 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/sahimikit.jpg')
  product58.photo.attach(io: file58, filename: 'img-sushkit')
  product58.save!
file59 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/ruben.jpg')
  product59.photo.attach(io: file59, filename: 'img-rub')
  product59.save!
file60 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/pizzamarg.jpg')
  product60.photo.attach(io: file60, filename: 'img-0')
  product60.save!
file61 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/pokeKit.jpg')
  product61.photo.attach(io: file61, filename: 'img-pokekit')
  product61.save!
file62 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-burger.jpg')
  product62.photo.attach(io: file62, filename: 'img-burgkit')
  product62.save!
file63 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-spicetrb.jpg')
  product63.photo.attach(io: file63, filename: 'img-spickt')
  product63.save!
file64 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-decad.jpg')
  product64.photo.attach(io: file64, filename: 'img-dec')
  product64.save!
file65 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/Minus8VinegarBox_600x.jpg')
  product65.photo.attach(io: file65, filename: 'img-vin')
  product65.save!
file66 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-matt.png')
  product66.photo.attach(io: file66, filename: 'img-mat')
  product66.save!
file67 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-cochBrisk.jpg')
  product67.photo.attach(io: file67, filename: 'img-chocbris')
  product67.save!
file68 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-cochRib.jpg')
  product68.photo.attach(io: file68, filename: 'img-ribcoch')
  product68.save!
file69 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-bbqpork.jpg')
  product69.photo.attach(io: file69, filename: 'img-shoul')
  product69.save!
file70 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-carolinaBBq.jpg')
  product70.photo.attach(io: file70, filename: 'img-carbbq')
  product70.save!
file71 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-sonomaBbq.jpg')
  product71.photo.attach(io: file71, filename: 'img-sonbbq')
  product71.save!
file72 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-wtf.jpg')
  product72.photo.attach(io: file72, filename: 'img-wtf')
  product72.save!
file73 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/mk-shorty.jpg')
  product73.photo.attach(io: file73, filename: 'img-cohrib')
  product73.save!


 # Photo Seeds - Bakery

file75 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-pumkpPi.jpg')
  product75.photo.attach(io: file75, filename: 'img-pumpk')
  product75.save!
file76 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-challabun.jpg')
  product76.photo.attach(io: file76, filename: 'img-chabun')
  product76.save!
file77 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-bagelEthin.jpg')
  product77.photo.attach(io: file77, filename: 'img-bageth')
  product77.save!
file78 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-vggi.jpg')
  product78.photo.attach(io: file78, filename: 'img-vegpie')
  product78.save!
file79 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-raspPie.png')
  product79.photo.attach(io: file79, filename: 'img-rasp')
  product79.save!
file80 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-pieSF.jpg')
  product80.photo.attach(io: file80, filename: 'img-sf')
  product80.save!
file81 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-piePec.jpg')
  product81.photo.attach(io: file81, filename: 'img-pec')
  product81.save!
file82 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-pieAp.jpg')
  product82.photo.attach(io: file82, filename: 'img-appi')
  product82.save!
file83 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-piechery.jpg')
  product83.photo.attach(io: file83, filename: 'img-chepie')
  product83.save!
file84 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-haz.jpg')
  product84.photo.attach(io: file84, filename: 'img-hax')
  product84.save!
file85 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-grit.jpg') 
  product85.photo.attach(io: file85, filename: 'img-grit')
  product85.save!
file86 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-bred.jpg')
  product86.photo.attach(io: file86, filename: 'img-br')
  product86.save!
file87 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-pizaFlo.webp')
  product87.photo.attach(io: file87, filename: 'img-pizfl')
  product87.save!
file88 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-pastyFl.jpg')
  product88.photo.attach(io: file88, filename: 'img-manit')
  product88.save!
file89 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-pastaFl.jpg')
  product89.photo.attach(io: file89, filename: 'img-pizflow')
  product89.save!



 # Photo Seeds - Bakery

file90 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-vanila.jpg')
  product90.photo.attach(io: file90, filename: 'img-van')
  product90.save!
file91 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-longpep.png')
  product91.photo.attach(io: file91, filename: 'img-longpp')
  product91.save!
file92 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-omani.jpg')
  product92.photo.attach(io: file92, filename: 'img-om')
  product92.save!
file93 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-pinkpep.jpg')
  product93.photo.attach(io: file93, filename: 'img-pink')
  product93.save!
file94 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-omaniWt.jpg')
  product94.photo.attach(io: file94, filename: 'img-omWht')
  product94.save!
file95 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-pickGin.jpg')
  product95.photo.attach(io: file95, filename: 'img-gin')
  product95.save!
file96 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-kosho.jpg')
  product96.photo.attach(io: file96, filename: 'img-yuzu')
  product96.save!
file97 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-shoyu.jpg')
  product97.photo.attach(io: file97, filename: 'img-shoyu')
  product97.save!
file98 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/b-bgarl.jpg')
  product98.photo.attach(io: file98, filename: 'img-bgar')
  product98.save!
file99 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-bsesam.jpg')
  product99.photo.attach(io: file99, filename: 'img-bses')
  product99.save!
file100 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-oliveMesk.jpg')
  product100.photo.attach(io: file100, filename: 'img-oliv')
  product100.save!
file101 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-mostarda.jpg')
  product101.photo.attach(io: file101, filename: 'img-mos')
  product101.save!
file102 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-quinMostar.jpg')
  product102.photo.attach(io: file102, filename: 'img-qnmos')
  product102.save!
file103 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-aquel.jpg')
  product103.photo.attach(io: file103, filename: 'img-aq')
  product103.save!
file104 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-sushiric.jpg')
  product104.photo.attach(io: file104, filename: 'img-sisric')
  product104.save!
file105 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-cous.jpg')
  product105.photo.attach(io: file105, filename: 'img-cous')
  product105.save!
file106 = open('https://oceanstar-seed.s3-us-west-1.amazonaws.com/seedphoto/p-trufjuc.jpg')
  product106.photo.attach(io: file106, filename: 'img-trugjuc')
  product106.save!



end
  #      FIN       #