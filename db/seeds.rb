# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Story.delete_all
Place.delete_all

alaskaP = Place.create({
	name: "Alaska",
	background_img: "../assets/Alaska-background.jpg"
	})

belizeP = Place.create({
	name: "Belize",
	background_img: "../assets/belize-boardwalk.jpg"
	})
bermudaP = Place.create({
	name: "Bermuda",
	background_img: "../assets/Bermuda-Beach.jpg"
	})

brazilP = Place.create({
	name: "Brazil",
	background_img: "../assets/brazil-rio.jpg"
	})

canadaP = Place.create({
	name: "Canada",
	background_img: "../assets/canada-toronto.jpg"
	})
egyptP = Place.create({
	name: "Egypt",
	background_img: "../assets/egypt-cairo.jpg"
	})
englandP = Place.create({
	name: "England",
	background_img: "../assets/england-london.jpeg"
	})

franceP = Place.create({
	name: "France",
	background_img: "../assets/france-town.jpg"
	})
hawaiiP = Place.create({
	name: "Hawaii",
	background_img: "../assets/hawaii_honolulu_1.jpg"
	})
italyP = Place.create({
	name: "Italy",
	background_img: "../assets/italy-bridge.jpg"
	})
japanP = Place.create({
	name: "Japan",
	background_img: "../assets/japan-tokyo.jpg"
	})
germanyP = Place.create({
	name: "Germany",
	background_img: "../assets/germany-frankfurt.jpg"
	})
greeceP = Place.create({
	name: "Greece",
	background_img: "../assets/greece-athens.jpg"
	})
guatemalaP = Place.create({
	name: "Guatemala",
	background_img: "../assets/guatemala-tikal.jpg"
	})
mexicoP = Place.create({
	name: "Mexico",
	background_img: "../assets/Mexico-Puerto-Vallarta.jpg"
	})
nantucketP = Place.create({
	name: "Nantucket",
	background_img: "../assets/nantucket-downtown.jpg"
	})
saintjohnsP = Place.create({
	name: "Saint Johns",
	background_img: "../assets/st-johns-beach.jpg"
	})
spainP = Place.create({
	name: "Spain",
	background_img: "../assets/spain-granada.jpg"
	})
thailandP = Place.create({
	name: "Thailand",
	background_img: "../assets/thailand-monks.jpg"
	})
vietnamP = Place.create({
	name: "Vietnam",
	background_img: "../assets/vietnam-bikes.jpg"
	})

#STORY SEEDS

Story.create({
	title: "The Husky Puppies",
	body:  "When my family traveled to Alaska, we met some very cute husky puppies.  This experience made me and my sister want to adopt a dog for our family.  For the rest of the trip, my sister and I begged our parents to get a dog.  One year later, we had our own Australian Shepard pup. =)",
	img_url: "",
	place_id: alaskaP.id,
	user_id: 1
	})

Story.create({
	title: "The View",
	body:  "I remember the hotel we stayed at was famous, the Copacabana.  The view from our hotel window overlooked one of Rio's most famous beaches.  I remember during this trip to Brazil my head and heart was still in New York... I fell in love with a girl in New York and for much of my time in Brazil I wanted to go back to New York to be with her.  Regardless I still have many lovely Brazilian memories.  One memory was visiting the cafe where the famous song 'The Girl From Ipanema' was written. =)",
	img_url: "",
	place_id: brazilP.id,
	user_id: 1
	})

Story.create({
	title: "...Like Matt Damon?",
	body: "I remember visiting a beautiful beach town in Belize.  I introduced myself to one of the locals, a girl around 20 years old.  When I said my name was Matt, she asked '...like Matt Damon?'",
	img_url: "",
	place_id: belizeP.id,
	user_id: 1
	})

Story.create({
	title: "Pink Sand",
	body: "One of my travel querks was that if I was in a country with sand, I would scoop some up in an empty water bottle and take it home.  I actually have many bottles at home, for example I have sand from mayan ruins and sand from the giza pyramids.  Bermuda's sand is what I remember most from my trip because it had a pink color to it.. unlike anything I've seen before.",
	img_url: "",
    place_id: bermudaP.id,
    user_id: 1
	})

Story.create({
	title: "Hurt Head =(",
	body: "My family visited Price Edward's Island in Canada when I was in middle school.  I was playing around with our guest house's weight scale in the bathroom to make the scale as big a number as possible.  Doing this, I fell backwards and hit my head on corner of a bathtub.  I started screaming, my parents came in and put my head under the sink and turned on the water.  Blood was flowing into the sink and it made me panic.  Luckily the bleeding stopped for the night and the next day I went to the doctor.  He gave me two shots and two stitches and I was free to go.  Scary memory.. =(",
	img_url: "",
	place_id: canadaP.id,
	user_id: 1
	})

Story.create({
	title: "Guilty Pleasure",
	body: "I remember arriving in London.  We rented out this amazing apartment near (I think) Lancaster Gate.  I think I was around 12 years old.  I remember my guilty pleasure at the time was this Spice Girls song called 'Two become One.'  I listened to this song on repeat on my trip to England.",
	img_url: "",
    place_id: englandP.id,
    user_id: 1
	})

Story.create({
	title: "Egyptian Carpeting School",
	body: "In a taxi on the way back from visiting the giza pyramids, we stopped at an egyptian carpeting school to view some carpets for sale.  What was disturbing was in the basement we saw dozens of kids working on making carpets... was this child labor or was this school training these kids to make a living making carpets?  It was unclear to us... either way it made me thankful I grew up with more opprotunity.",
	img_url: "",
	place_id: egyptP.id,
	user_id: 1
	})

Story.create({
	title: "Visiting My Sister",
	body: "My older sister lived in Paris for a year tutoring students and interning at the United Nations.  Being that I am a huge foodie, we went to a lot of fantastic French restaurants.  I particularly remember in Oberkampf (a hip Parisian neighborhood) eating an escargot dish that blew me away.",
	img_url: "",
	place_id: franceP.id,
	user_id: 1
	})

Story.create({
	title: "Visiting a High School Friend",
	body: "I remember visiting a friend from high school who moved to Hawaii.  He took me and a few of his friends to a beach only locals know about.  It was gorgeous.. we drank some beers and looked at pretty beach girls.",
    img_url: "",
    place_id: hawaiiP.id,
    user_id: 1
	})

Story.create({
	title: "The Food. Oh man the food.",
	body: "One thing I definately remember from our travels here was the food.  I remember arriving in Venice and feeling super tired from jet lag but also very hungry.  I remember first eating a pizza that was incredible.  Later in the evening for dinner I had an amazing bolognese pasta dish.  Throughout the trip around Italy the food was generally amazing.. that's what I remember most.",
	img_url: "",
	place_id: italyP.id,
	user_id: 1
	})

Story.create({
	title: "Drinking with Friends of Friends",
	body: "One night in Tokyo, I hung out with japanese friends I met growing up in New York.  We went bar crawling around Shibuya (a neighborhood in Tokyo).  It was fun to meet my friends' japanese friends.  With my friends playing the role of translator, I had the chance to talk to their friends.  I had some very fun nights with these people.",
	img_url: "",
	place_id: japanP.id,
	user_id: 1
	})

Story.create({
	title: "The City of Frankfurt",
	body:  "My family and I was only in Germany for a day (we were inbetween flights).  What I remember most was the food.  We ate at a restaurant called Wagners which served traditional German cuisine.  I remember the portions being enourmous but also tasty.",
	img_url:"",
	place_id: germanyP.id,
	user_id: 1
	})
Story.create({
    title: "Playdates with the Locals",
    body: "Greece was the first country I've been to.  I traveled here when I was 9 years old.  I remember visiting Mykonos, a gorgeous island in the Mediterranean.  I remember becoming friends with the local kids around my age.  I remembered we played manhunt and soccer.",
    img_url: "",
    place_id: greeceP.id,
    user_id: 1
	})

Story.create({
	title: "A Mayan Temple City",
	body: "My family and I visited Tikal, the capital Mayan city.  The temples were breathtaking and fun to explore.  I remember seeing many other tourists here.",
	img_url: "",
	place_id: guatemalaP.id,
	user_id: 1
	})

Story.create({
	title: "Mexican Cruise",
	body: "One year my mom's side of my family all went on a cruise together from San Diego to Mexico.  I remember arriving in Puerto Vallarta and eating the best burrito of my life.  I learned from this trip that I prefer not to do a cruise when travelling.",
	img_url: "",
    place_id: mexicoP.id,
    user_id: 1
	})

Story.create({
	title: "Nantucket House",
	body: "My parents rented a house by the beach in Nantucket in 2011.  I visited for a week and loved it.  I fell in love with going to the beach and swimming in the water.  I'd love to spend a summer at a place like this.. defintely a different lifestyle than New York City.",
	img_url: "",
	place_id: nantucketP.id,
	user_id: 1
	})

Story.create({
	title: "Quality Time with Family Friends",
	body: "I traveled to Saint Johns with my family and some family friends.  We rented an amazing three story house and went to the beach everyday.  Saint John is a small U.S. Virgin Island with a very low-key, relaxed vibe.  I remember deeply enjoying hanging out at gorgeous beaches.",
    img_url: "",
    place_id: saintjohnsP.id,
    user_id: 1
	})
Story.create({
	title: "The Flamenco Guitar",
	body: "In Barcelona my family and I visited a guitar shop.  I've been a guitarist my whole life and was happy to browse the shop and play a few guitars.  I ended up falling in love with a relatively cheap, nylon-stringed flamenco guitar.  After playing with it for about 20 minutes I decided to buy it and bring it home with me.",
	img_url: "",
	place_id: spainP.id,
	user_id: 1
	})

Story.create({
	title: "The Four monks",
	body: "In Thailand, it is common for young men to become buddhist monks for a few years.  I saw monks dressed in orange all over the place in Bangkok.  The photo for this page was taken by me on a water taxi in Bangkok.",
	img_url: "",
    place_id: thailandP.id,
    user_id: 1
	})

Story.create({
	title: "Dog Tags for Sale",
	body: "In a town in Vietnam at a tourist shop, I saw a plate of US dogtags from the Vietnam War.  They were selling them for a few dollars each.  It was shocking to see.",
	img_url: "",
	place_id: vietnamP.id,
	user_id: 1

	})


# }
# Place.create {
# 	name: "Saint Johns"
# }
# Place.create {
# 	name: "Spain"
# }
# Place.create {
# 	name: "Thailand"
# }
# Place.create {
# 	name: "Vietnam"
# }







# # Story.create({
# #    country: "Thailand",
# #    title: "The 4 Bangkok Monks",
# #    body: "On a water-taxi I saw four buddhist monks and took a picture of them.",
# #    img_url: "thailand-wats.jpg"

# # 	})

# # Story.create({
# #    country: "Vietnam",
# #    title: "The dogtags",
# #    body: "In a town in Vietnam, at a tourist shop I saw a plate of US dogtags from the Vietnam War.  They were selling them for a few dollars each.",
# #    img_url: "vietnam-dogtags-away.jpg"
# # 	})

# # Story.create({
# #    country: "Alaska",
# #    title: "Husky puppies",
# #    body: "My family and I saw some very cute husky puppies that were going to be trained to dog-sled.  This made us want to buy a puppy for ourselves when we went back to New York.",
# #    img_url: "Alaska-background.jpg"
# # 	})

# # Story.create({
# #    country: "Thailand",
# #    title: "Story 2",
# #    body: "On a water-taxi I saw four buddhist monks and took a picture of them.",
# #    img_url: "thailand-wats.jpg"
# # 	})

# # Story.create({
# #    country: "Vietnam",
# #    title: "Story 2",
# #    body: "In a town in Vietnam, at a tourist shop I saw a plate of US dogtags from the Vietnam War.  They were selling them for a few dollars each.",
# #    img_url: "vietnam-dogtags-away.jpg"
# # 	})
