# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create User default profiles
john = User.create(name: "John", email: "john.test@aol.com", password: "password");
jane = User.create(name: "Jane", email: "jane.test@aol.com", password: "password");

# Create Category defaults
coffee_tea = Category.create(name: "Coffee/Tea")
restaurant_eatery = Category.create(name: "Restaurant/Eatery")
bakery_dessert = Category.create(name: "Bakery/Dessert")
grocery = Category.create(name: "Grocery")
event_venue = Category.create(name: "Event/Venue")
tech_electronic = Category.create(name: "Tech/Electronic")
music = Category.create(name: "Music")
financial = Category.create(name: "Financial")
exercise_gym = Category.create(name: "Exercise/Gym")
brewery_pub = Category.create(name: "Brewery/Pub")
bookshop = Category.create(name: "Bookshop")
clothes_accessories = Category.create(name: "Clothes/Accessories")
furniture_supply = Category.create(name: "Furniture/Supply")
architecture_interior_design = Category.create(name: "Architecture/Interior Design")
health_medical = Category.create(name: "Health/Medical")
sports = Category.create(name: "Sports")
nature = Category.create(name: "Nature")
movies = Category.create(name: "Movies")

# Create Business defaults
business_1 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restaurant", open_hours: "SUN-WED 11AM-9PM THURS-SAT 11AM-10PM", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

business_2 = Business.create(name: "Optimist Hall", description: "Welcome to Optimist Hall, the happiest place on earth. Ok, that may be a small stretch…but it is a food hall with tons of dining options, some cool bars and fun specialty shops. It’s a place where you can hang by yourself or with some good pals. Seems like a pretty happy place to us.", open_hours: "MON-FRI 7am - 9pm SAT-SUN 8am-9pm", email: "info@optimisthall.com", phone_number: "", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.optimisthall.com", address1: "1115 N. Brevard St.", city: "Charlotte", state: "NC", postal_code: "28206")

business_3 = Business.create(name: "Not Just Coffee - Packard Place", description: "In 2011 Miracle and James Yoder opened the doors of Not Just Coffee to the city of Charlotte, pledging intentionality and passion for every cup and every customer. We are dedicated to cultivating a community supportive of ethical and locally-driven business. We proudly partner with our neighbors at Homeland Creamery and Counter Culture Coffee to craft flavorful brews, each made with decided precision and care.", open_hours: "Daily 8 AM - 3 PM", email: "", phone_number: "+1 (980) 259-1333", favorite: false, delivery: false, user_id: john.id, category_id: coffee_tea.id, website: "notjust.coffee", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28202")

business_4 = Business.create(name: "The Common Market", description: "The Common Market is an uncommon convenience store, deli and bar with 3 Charlotte NC locations. We're your local spot for an uncommonly good time. Each store uniquely embraces & reflects its neighborhood's vibe. All are welcome on board. We strive to bring people together, grow our communities and celebrate diversity. Meet old friends and make new ones while you eat and drink the best stuff around 365 days a year!", open_hours: "Sun-Thurs 8am-9pm Fri-Sat 8am-10pm", email: "", phone_number: "+1 (704) 334-6209", favorite: false, delivery: false, user_id: jane.id, category_id: grocery.id, website: "www.commonmarketisgood.com", address1: "2007 Commonwealth Ave", city: "Charlotte", state: "NC", postal_code: "28205")

business_5 = Business.create(name: "Reigning Doughnuts", description: "Join us at our walk-up window in NoDa for hot, fresh doughnuts! With a variety of flavors – and one special daily flavor – we’re open both morning and night! Want to make an order in advance? Order online for morning pick up times!", open_hours: "Tuesday – Sunday 8 AM - 12 PM, 5- 9 PM", email: "reigningdoughnuts@icloud.com", phone_number: "", favorite: false, delivery: true, user_id: john.id, category_id: bakery_dessert.id, website: "www.reigningdoughnuts.com", address1: "3120 N Davidson St", city: "Charlotte", state: "NC", postal_code: "28205")

business_6 = Business.create(name: "Not Just Coffee", description: "In 2011 Miracle and James Yoder opened the doors of Not Just Coffee to the city of Charlotte, pledging intentionality and passion for every cup and every customer. We are dedicated to cultivating a community supportive of ethical and locally-driven business. We proudly partner with our neighbors at Homeland Creamery and Counter Culture Coffee to craft flavorful brews, each made with decided precision and care.", open_hours: "Mon-Fri 7:30 AM - 3 PM Saturday 8 AM - 3 PM", email: "", phone_number: "+1 (980) 579-0346", favorite: false, delivery: false, user_id: jane.id, category_id: coffee_tea.id, website: "notjust.coffee", address1: "421 Providence Rd", city: "Charlotte", state: "NC", postal_code: "28207")

business_7 = Business.create(name: "Sycamore Brewing", description: "At Sycamore Brewing, we believe fresh beer made with top-notch ingredients should be enjoyed by everyone. So, a few years back, with proud roots in Charlotte, we set out to brew beers that bring people together and drink easy from the first sip to the last.", open_hours: "Mon - Fri 4-9pm Saturday 12-9pm Sunday 12-6pm", email: "", phone_number: "+1 (704) 910-3821", favorite: false, delivery: true, user_id: john.id, category_id: brewery_pub.id, website: "www.sycamorebrew.com", address1: "2161 Hawkins St", city: "Charlotte", state: "NC", postal_code: "28203")

business_8 = Business.create(name: "Undercurrent", description: "Undercurrent Coffee was born out of dream chasing. Forged through community, opportunity and connectivity. Everything on our menu is sourced, brewed and prepared with integrity and passion. We are proud to be an educational resource for our community. If you’re looking for a place that feels as good as the coffee tastes, join us at Undercurrent Coffee.", open_hours: "Monday - Friday: 7am - 5pm Saturday: 8am - 5pm Sunday: 8am - 5pm", email: "info@undercurrentcoffee.com", phone_number: "+1 (980) 498-7328", favorite: false, delivery: false, user_id: jane.id, category_id: coffee_tea.id, website: "www.undercurrentcoffee.com", address1: "2012 Commonwealth Ave", city: "Charlotte", state: "NC", postal_code: "28205")

# PLACE_HOLDER
# business_9 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_10 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_11 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_12 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_13 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_14 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_15 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_16 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_17 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_18 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_19 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: john.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# # PLACE_HOLDER
# business_20 = Business.create(name: "Midwood Smokehouse", description: "Local BBQ restuarant", open_hours: "", email: "", phone_number: "+1 (980) 237-7929", favorite: false, delivery: true, user_id: jane.id, category_id: restaurant_eatery.id, website: "www.midwoodsmokehouse.com", address1: "540 Brandywine Rd", city: "Charlotte", state: "NC", postal_code: "28209")

# Create Item defaults
Item.create(name: "Smoked Wings", description: "A pound of chicken wings Smoked or Crispy with your choice of buttermilk ranch, Blue cheese or BBQ sauce.", price: 9.00, favorite: false, business_id: business_1.id)
Item.create(name: "Hushpuppies", description: "Scratch-made, slightly sweet and warm served with Midwood BBQ sauce.", price: 4.00, favorite: false, business_id: business_1.id)
Item.create(name: "Beef Brisket - Large", description: "Texas-style sliced USDA Prime beef brisket. Served with your choice of two side item and garnished with hushpuppies and house pickles .", price: 20.50, favorite: false, business_id: business_1.id)
Item.create(name: "Burnt Ends - Small", description: "Crispy caramelized cubes of brisket tossed in our cola barbecue sauce. Served with your choice of two side items and garnished with hushpuppies and house pickles.", price: 16.50, favorite: false, business_id: business_1.id)
Item.create(name: "Saint Louis-Style Pork Ribs 1/2 Rack", description: "Quality smoked ribs. Served with your choice of one side item and garnished with hushpuppies and house pickles.", price: 16.00, favorite: false, business_id: business_1.id)

Item.create(name: "Green Tea", description: "", price: 5.00, favorite: false, business_id: business_3.id)
Item.create(name: "Latte", description: "", price: 4.50, favorite: false, business_id: business_3.id)
Item.create(name: "Cold Brew", description: "", price: 4.00, favorite: false, business_id: business_3.id)
Item.create(name: "Half Gallon Cold Brew", description: "A half gallon of our delicious cold brew. Rotating seasonal coffees. Approximately 6-7 servings.", price: 18.00, favorite: false, business_id: business_3.id)

Item.create(name: "GREENS N STUFF", description: "Egg*, Avocado, Baby Spinach, Alfalfa Sprouts, Swiss Cheese, & Vegenaise On Your Choice Of Carb", price: 6.75, favorite: false, business_id: business_4.id)
Item.create(name: "THE OLYMPIAN", description: "Turkey, Feta Cheese, Olive Tapenade, Red Onion, Green Pepper, Tomato, And Lettuce On A Spinach Herb Wrap", price: 9.00, favorite: false, business_id: business_4.id)
Item.create(name: "CHEF SALAD", description: "Choose Turkey, Ham, Or Tofu With Mixed Greens, Tomato, Cucumber, Carrots, And Swiss Cheese", price: 8.75, favorite: false, business_id: business_4.id)

Item.create(name: "Plain Doughnut", description: "", price: 1.49, favorite: false, business_id: business_5.id)
Item.create(name: "Vanilla Icing Doughnut", description: "", price: 1.49, favorite: false, business_id: business_5.id)
Item.create(name: "Chocolate Icing Doughnut", description: "", price: 1.49, favorite: false, business_id: business_5.id)
Item.create(name: "Honey GlazeDoughnut", description: "", price: 1.49, favorite: false, business_id: business_5.id)
Item.create(name: "Cinnamon Sugar Doughnut", description: "", price: 1.49, favorite: false, business_id: business_5.id)
Item.create(name: "Powdered Sugar Doughnut", description: "", price: 1.49, favorite: false, business_id: business_5.id)
Item.create(name: "Assorted Half Dozen", description: "1 Each: Cinnamon Sugar, Honey Glazed, Powdered Sugar, Chocolate with Sprinkles, Vanilla with Sprinkles, & Daily Flavor", price: 8.94, favorite: false, business_id: business_5.id)
Item.create(name: "Assorted Dozen", description: "2 Cinnamon Sugar, 2 Honey Glazed, 2 Powdered Sugar, 1 Chocolate, 1 Chocolate with Sprinkles, 1 Vanilla, 1 Vanilla with Sprinkles, & 2 Daily Flavor", price: 16.00, favorite: false, business_id: business_5.id)
Item.create(name: "Iced Coffee", description: "", price: 3.29, favorite: false, business_id: business_5.id)
Item.create(name: "Hot Coffee", description: "", price: 3.19, favorite: false, business_id: business_5.id)
Item.create(name: "Hot Coffee", description: "", price: 3.39, favorite: false, business_id: business_5.id)
Item.create(name: "Large Hot Chocolate", description: "", price: 4.19, favorite: false, business_id: business_5.id)
Item.create(name: "Hot Tea", description: "", price: 2.79, favorite: false, business_id: business_5.id)

Item.create(name: "Green Tea", description: "", price: 5.00, favorite: false, business_id: business_6.id)
Item.create(name: "Latte", description: "", price: 4.50, favorite: false, business_id: business_6.id)
Item.create(name: "Cold Brew", description: "", price: 4.00, favorite: false, business_id: business_6.id)
Item.create(name: "Half Gallon Cold Brew", description: "A half gallon of our delicious cold brew. Rotating seasonal coffees. Approximately 6-7 servings.", price: 18.00, favorite: false, business_id: business_6.id)

Item.create(name: "Latte", description: "We brew a variety of unique and exceptional coffees, roasted in the Ozarks by Onyx Coffee Lab. Our teas are curated by SPIRIT Tea, and our pastries are baked from scratch.", price: 4.00, favorite: false, business_id: business_8.id)
Item.create(name: "Breakfast Sandwich", description: "tender Evans Family Farm eggs topped with spicy aoli & roasted Bush-N-Vine Broccolini, sandwiched between a toasted Dukes potato roll *ADD BROADBENTS BACON +2 *ADD AVOCADO +1", price: 4.00, favorite: false, business_id: business_8.id)