# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Remove existing data in Goodlook database
UserOutfit.destroy_all
QuestionChoice.destroy_all
User.destroy_all
Result.destroy_all
Outfit.destroy_all
Style.destroy_all
Question.destroy_all

#Create the 15 quiz questions with order and text
questions = Question.create([
  {text: "Who's your style icon?", order: 1},
  {text: "What room would you hang out in?", order: 2},
  {text: "When you walk into a crowded room, what would you do?", order: 3},
  {text: "What materials do you own?", order: 4},
  {text: "What artwork would you hang on your wall?", order: 5},
  {text: "What city would you live in?", order: 6},
  {text: "What is your favourite fragrance?", order: 7},
  {text: "What personality do you most aspire to?", order: 8},
   {text: "Your local theatre's playing a few old movies. What movie would you watch?", order: 9},
  {text: "What is your shopping philosophy?", order: 10},
  {text: "It's Friday night and you're going on a date. What do you want to do?", order: 11},
  {text: "If you were to win a closet makeover from two of your favourite stores, which would they be?", order: 12},
  {text: "What is your favourite accessory?", order: 13},
  {text: "Complete this sentence: I want to live life...", order: 14},
  {text: "What would be the anthem to your life?", order: 15}
])

#Create the 5 styles for the quiz
styles = Style.create([
  {name: "Avant-garde", description: "Your style persona is Avant-garde. You share your style with Janelle Monae.", image: "/assets/results/ag_0_result.jpg"},
  {name: "Bohemian", description: "Your style is Bohemian! You lean to a more relaxed, lived-in, funky kinda flow, arm candy is a must and you like a lot of it. Denim, shade, and velvet will be paired in just the right way that creates a style that works for you and others love it.You love natural fabrics and earth tones The 1960s and the early 1970s is your claim to style in an effortless way. You share your style with Vanessa Hudgens..", image: "/assets/results/boho_1_result.jpeg"},
  {name: "Classic", description: "Your style persona is Classic.", image: "/assets/results/amal_result.jpg"},
  {name: "Romantic", description: "Your style persona is Romantic.", image: "assets/results/mindyresult1.jpg"},
  {name: "Urban", description: "Your style persona is Urban.", image: "assets/results/zoe_result1.jpg"}
])

#Create the question choices for each question where each question choice is associated with one question and one style

# ----------- Question 1/15 -----------
question_choice_1a = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[0].id,
    text: "a. Janelle Monae",
    image: "/assets/question_1/q1_janellemonae.jpg"
  })

question_choice_1b = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[1].id,
    text: "b. Vanessa Hudgens",
    image: "/assets/question_1/boho_vh.jpg"
  })

question_choice_1c = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[2].id,
    text: "c. Amal Clooney",
    image: "/assets/question_1/q1_amclooney.jpg"
  })

question_choice_1d = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[3].id,
    text: "d. Mindy Kaling",
    image: "/assets/question_1/q1_mindykaling.jpg"
  })

question_choice_1e = QuestionChoice.create(
  {
    question_id: questions[0].id,
    style_id: styles[4].id,
    text: "e. Zoe Kravitz",
    image: "/assets/question_1/q1_zk4.jpg"
  })

# ----------- Question 2/15 -----------
question_choice_2a = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[0].id,
    text: nil,
    image: "/assets/question_2/avantgarde_room.jpg"
  })

question_choice_2b = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[1].id,
    text: nil,
    image: "/assets/question_2/boho_room2.jpg"
  })

question_choice_2c = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[2].id,
    text: nil,
    image: "/assets/question_2/classic_room.jpg"
  })

question_choice_2d = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[3].id,
    text: nil,
    image: "/assets/question_2/romantic_room1.jpg"
  })

question_choice_2e = QuestionChoice.create(
  {
    question_id: questions[1].id,
    style_id: styles[4].id,
    text: nil,
    image: "/assets/question_2/urban_room2.jpg"
  })

# ----------- Question 3/15 -----------
question_choice_3a = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[0].id,
    text: "a. Grab a drink and join in on a discussion about Elon Musk's latest doings.",
    image: nil
  })

question_choice_3b = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[1].id,
    text: "b. Invite everyone to join you in the kitchen to taste your famous guac!",
    image: nil
  })

question_choice_3c = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[2].id,
    text: "c. Say hello to everyone and ask how they are doing.",
    image: nil
  })

question_choice_3d = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[3].id,
    text: "d. Find a group of people and share a personal, fun story. You are the life of the party.",
    image: nil
  })

question_choice_3e = QuestionChoice.create(
  {
    question_id: questions[2].id,
    style_id: styles[4].id,
    text: "e. Grab a seat on the nearest bean bag chair and put on the Raptors game.",
    image: nil
  })

# ----------- Question 4/15 -----------
question_choice_4a = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[0].id,
    text: "a. I love cotton for its durability and comfort, but what matters most to me is that my clothing is unique to me.",
    image: nil
  })

question_choice_4b = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[1].id,
    text: "b. I own a variety of prints like animal prints, floral prints and ethnic prints.",
    image: nil
  })

question_choice_4c = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[2].id,
    text: "c. When I buy clothing, I am looking for quality. Most of my clothing is made from cotton, linen, pure denim and leather.",
    image: nil
  })

question_choice_4d = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[3].id,
    text: "d. I have a few expensive pieces like silk, velvet, chiffon but I generally wear anything with florals and pastel colors.",
    image: nil
  })

question_choice_4e = QuestionChoice.create(
  {
    question_id: questions[3].id,
    style_id: styles[4].id,
    text: "e. It doesn’t matter. I buy whatever is in season and looks good.",
    image: nil
  })

# ----------- Question 5/15 -----------
question_choice_5a = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[0].id,
    text: nil,
    image: "/assets/question_5/politicalart_ag.jpg"
  })

question_choice_5b = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[1].id,
    text: nil,
    image: "/assets/question_5/elephantart_boho.jpg"
  })

question_choice_5c = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[2].id,
    text: nil,
    image: "/assets/question_5/classicartwork.jpg"
  })

question_choice_5d = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[3].id,
    text: nil,
    image: "/assets/question_5/rom_artwork.jpg"
  })

question_choice_5e = QuestionChoice.create(
  {
    question_id: questions[4].id,
    style_id: styles[4].id,
    text: nil,
    image: "/assets/question_5/urb_artwork.jpg"
  })

# ----------- Question 6/15 -----------
question_choice_6a = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[0].id,
    text: "a. Oslo, Norway",
    image: "/assets/question_6/ag_oslonorway.jpg"
  })

question_choice_6b = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[1].id,
    text: "b. Oaxaca, Mexico",
    image: "/assets/question_6/boho_mexico.jpg"
  })

question_choice_6c = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[2].id,
    text: "c. London, England",
    image: "/assets/question_6/class_londoneng.jpg"
  })

question_choice_6d = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[3].id,
    text: "d. Paris, France",
    image: "/assets/question_6/rom_parisfrance.jpg"
  })

question_choice_6e = QuestionChoice.create(
  {
    question_id: questions[5].id,
    style_id: styles[4].id,
    text: "e. New York, USA",
    image: "/assets/question_6/newyork_cabs.jpg"
  })

# ----------- Question 7/15 -----------
question_choice_7a = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[0].id,
    text: "a. Mad et Len, Blackmusk",
    image: "/assets/question_7/ag_fragrance.jpg"
  })

question_choice_7b = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[1].id,
    text: "b. Saje, Goddess Natural Perfume",
    image: "/assets/question_7/boho_naturalperfume.jpg"
  })

question_choice_7c = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[2].id,
    text: "c. Yves Saint Laurent, Black Opium",
    image: "/assets/question_7/class_blackopium.jpg"
  })

question_choice_7d = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[3].id,
    text: "d. Marc Jacobs, Daisy",
    image: "/assets/question_7/rom_marcjacobs.jpg"
  })

question_choice_7e = QuestionChoice.create(
  {
    question_id: questions[6].id,
    style_id: styles[4].id,
    text: "e. Clean, Sephora",
    image: "/assets/question_7/urb_clean.jpg"
  })

# ----------- Question 8/15 -----------
question_choice_8a = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[0].id,
    text: "a. Risk-taker, lives life to the edge",
    image: nil
  })

question_choice_8b = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[1].id,
    text: "b. Free-spirited",
    image: nil
  })

question_choice_8c = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[2].id,
    text: "c. Well-groomed, sophisticated",
    image: nil
  })

question_choice_8d = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[3].id,
    text: "d. Vivacious, charismatic, light-hearted",
    image: nil
  })

question_choice_8e = QuestionChoice.create(
  {
    question_id: questions[7].id,
    style_id: styles[4].id,
    text: "e. Trend-setter, being at the centre of all the action",
    image: nil
  })

# ----------- Question 9/15 -----------
question_choice_9a = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[0].id,
    text: "a. The Matrix",
    image: "/assets/question_9/matrix.jpg"
  })

question_choice_9b = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[1].id,
    text: "b. We Bought a Zoo",
    image: "/assets/question_9/zoomovie.jpg"
  })

question_choice_9c = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[2].id,
    text: "c. Good Will Hunting",
    image: "/assets/question_9/goodwillhunting.jpg"
  })

question_choice_9d = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[3].id,
    text: "d. The Devil Wears Prada",
    image: "/assets/question_9/devilwearsprada.jpg"
  })

question_choice_9e = QuestionChoice.create(
  {
    question_id: questions[8].id,
    style_id: styles[4].id,
    text: "e. Black Panther",
    image: "/assets/question_9/blackpanther.jpg"
  })

# ----------- Question 10/15 -----------
question_choice_10a = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[0].id,
    text: "a. Defying convention and norms",
    image: nil
  })

question_choice_10b = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[1].id,
    text: "b. Naturally-sourced, colourful, earthy",
    image: nil
  })

question_choice_10c = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[2].id,
    text: "c. Simplicity, timeless, basics",
    image: nil
  })

question_choice_10d = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[3].id,
    text: "d. Playful, fun, light-hearted",
    image: nil
  })

question_choice_10e = QuestionChoice.create(
  {
    question_id: questions[9].id,
    style_id: styles[4].id,
    text: "e. Trendy, practical and comfortable",
    image: nil
  })

# ----------- Question 11/15 -----------
question_choice_11a = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[0].id,
    text: "a. Go to a Banksy art exhibit",
    image: nil
  })

question_choice_11b = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[1].id,
    text: "b. Attend a night yoga event at High Park",
    image: nil
  })

question_choice_11c = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[2].id,
    text: "c. Go to Canoe restaurant and have their braised beef",
    image: nil
  })

question_choice_11d = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[3].id,
    text: "d. Watch a movie at a drive-in theatre",
    image: nil
  })

question_choice_11e = QuestionChoice.create(
  {
    question_id: questions[10].id,
    style_id: styles[4].id,
    text: "e. Play games at the Rec Room",
    image: nil
  })

# ----------- Question 12/15 -----------
question_choice_12a = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[0].id,
    text: "a. Etsy, Unconventional",
    image: nil
  })

question_choice_12b = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[1].id,
    text: "b. Free People, Anthropologie",
    image: nil
  })

question_choice_12c = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[2].id,
    text: "c. Ralph Lauren, Ann Taylor",
    image: nil
  })

question_choice_12d = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[3].id,
    text: "d. Suzy Shier, BCBGMAXAZRIA",
    image: nil
  })

question_choice_12e = QuestionChoice.create(
  {
    question_id: questions[11].id,
    style_id: styles[4].id,
    text: "e. Lululemon, H&M",
    image: nil
  })

# ----------- Question 13/15 -----------
question_choice_13a = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[0].id,
    text: nil,
    image: "/assets/question_13/ag_leathernecklace.jpg"
  })

question_choice_13b = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[1].id,
    text: nil,
    image: "/assets/question_13/rattanbag.jpeg"
  })

question_choice_13c = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[2].id,
    text: nil,
    image: "/assets/question_13/pearlbracelet.jpg"
  })

question_choice_13d = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[3].id,
    text: nil,
    image: "/assets/question_13/katespadescarf.jpg"
  })

question_choice_13e = QuestionChoice.create(
  {
    question_id: questions[12].id,
    style_id: styles[4].id,
    text: nil,
    image: "/assets/question_13/beatsbydre.jpg"
  })

# ----------- Question 14/15 -----------
question_choice_14a = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[0].id,
    text: "a. On the edge",
    image: nil
  })

question_choice_14b = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[1].id,
    text: "b. In full bloom",
    image: nil
  })

question_choice_14c = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[2].id,
    text: "c. With clarity",
    image: nil
  })

question_choice_14d = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[3].id,
    text: "d. To the fullest and have fun",
    image: nil
  })

question_choice_14e = QuestionChoice.create(
  {
    question_id: questions[13].id,
    style_id: styles[4].id,
    text: "e. In the moment",
    image: nil
  })

# ----------- Question 15/15 -----------
question_choice_15a = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[0].id,
    text: "a. When The Party's Over by Billie Eilish",
    image: nil
  })

question_choice_15b = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[1].id,
    text: "b. Imagine by John Lennon",
    image: nil
  })

question_choice_15c = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[2].id,
    text: "c. I Want It That Way by Backstreet Boys",
    image: nil
  })

question_choice_15d = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[3].id,
    text: "d. Haven't Met You Yet by Michael Bublé",
    image: nil
  })

question_choice_15e = QuestionChoice.create(
  {
    question_id: questions[14].id,
    style_id: styles[4].id,
    text: "e. Sunflower by Post Malone",
    image: nil
  })
# USER SEED ------------------
user1 = User.create(
  {
    id: 1,
    email: "test@test.com",
    password: "test"
  })

user2 = User.create(
  {
    id: 2,
    email: "example@example.com",
    password: "example"
  })

# RESULTS SEED -------------------
result1 = Result.create(
  {
    style_id: styles[0].id,
    user_id: user1.id
  })

# OUTFIT SEED ------------------
# AVANT-GARDE, STYLE_ID = 0

outfit_ag_1= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_abstractiontop.jpg",
    text: "Abstraction Top",
    link: "https://theunconventional.co.uk/dzhus-abstraction-top.html"
  })

outfit_ag_2= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_blackmaxitop.jpg",
    text: "Black Maxi Top",
    link: "https://www.etsy.com/ca/listing/510008898/new-summer-top-black-cotton-shirt-black?ref=related-3"
  })
  
outfit_ag_3= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_blacktunicdress.jpg",
    text: "Black Tunic Dress ",
    link: "https://www.etsy.com/ca/listing/477239838/black-tunic-shirt-black-shirt-long?ref=related-7"
  })

outfit_ag_4= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_genderisalie.jpg",
    text: "Gial Oveersized Sweater",
    link: "https://theunconventional.co.uk/mark-baigent-gial-oversized-sweater.html"
  })

outfit_ag_5= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_tailoredlinenblazer.jpg",
    text: "Tailored Linen Blazer",
    link: "https://theunconventional.co.uk/nordan-tailored-linen-blazer.html"
  })

outfit_ag_6= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_futuristicblackdress.jpg",
    text: "Futuristic Black Dress",
    link: "https://www.etsy.com/ca/listing/678293684/futuristic-dress-black-dress-avant-garde?ref=related-2"
  })

outfit_ag_7= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_tailoredlinenblazer.jpg",
    text: "Tailored Linen Blazer",
    link: "https://www.etsy.com/ca/listing/678293684/futuristic-dress-black-dress-avant-garde?ref=related-2"
  })

outfit_ag_8= Outfit.create(
  {
    style_id: styles[0].id,
    image: "/assets/ag_outfits/ag_jerseydrape.jpg",
    text: "Jersey Drape Dress",
    link: "https://theunconventional.co.uk/jersey-drape-dress.html"
  })

outfit_ag_9= Outfit.create(
   {
      style_id: styles[0].id,
      image: "/assets/ag_outfits/ag_asymmetriclinenshirtdress.jpg",
      text: "Asymmetric Linen Shirt Dress",
      link: "https://theunconventional.co.uk/barbara-i-gongini-asymmetric-linen-shirt-dress.html"
    })


#BOHO, STYLE_ID = 1

outfit_boho_1 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_flarepants.jpg",
    text: "Flare Pants",
    link: "https://www.threebirdnest.com/collections/whats-new/products/soria-ruffled-tulip-hem-flare-pants-brown"
  })

outfit_boho_2 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_tiedye",
    text: "Tie Dye Maxi Dress",
    link: "https://www.threebirdnest.com/collections/dresses/products/estella-tie-dye-plunge-maxi-dress-mocha"
  })

outfit_boho_3 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_floraljumpsuit",
    text: "Floral Jumpsuit",
    link: "https://www.threebirdnest.com/collections/dresses/products/montana-floral-print-jumpsuit-mustard"
  })

outfit_boho_4 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_romperplaysuit.jpg",
    text: "Romper Playsuit",
    link: "https://www.threebirdnest.com/collections/whats-new/products/sunday-harem-romper-playsuit-mustard"
  })

outfit_boho_5 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_offshoulderdress.jpg",
    text: "Off Shoulder Dress",
    link: "https://www.threebirdnest.com/collections/whats-new/products/carmella-embroidered-off-shoulder-ruffle-layered-shift-dress-sand"
  })

outfit_boho_6 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_embroidereddress.jpg",
    text: "Embroidered Dress",
    link: "https://www.threebirdnest.com/collections/whats-new/products/costa-mesa-embroidered-maxi-dress-mustard"
  })

outfit_boho_7 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_maxishirt.jpg",
    text: "Floral Maxi Skirt",
    link: "https://www.threebirdnest.com/collections/whats-new/products/seville-maxi-skirt-floral"
  })

outfit_boho_8 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_dustybluemaxidress.jpg",
    text: "Dusty Blue Maxi Dress",
    link: "https://www.threebirdnest.com/collections/dresses/products/sweet-memories-button-front-maxi-dress-dusty-blue"
  })

outfit_boho_9 = Outfit.create(
  {
    style_id: styles[1].id,
    image: "/assets/boho_outfits/boho_whiteminidress.jpg",
    text: "White Mini Dress",
    link: "https://www.threebirdnest.com/collections/dresses/products/hayden-embroidered-mini-dress-cream"
  })

# CLASSIC, STYLE_ID = 2
outfit_classic_1 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_dressshirt.jpg",
      text: "Shirt Dress",
      link: "https://www.simons.ca/en/women-clothing/dresses/straight/patch-pocket-poplin-shirtdress--14509-21905?catId=6680&colourId=79"
    })

outfit_classic_2 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_florallacedress.jpg",
      text: "Floral Lace Dress",
      link: "https://www.simons.ca/en/women-clothing/dresses/fit-flare/floral-lace-dress--6914-4609?catId=6680&colourId=70"
    })

outfit_classic_3 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_linendress.jpg",
      text: "Country Linen Dress ",
      link: "https://www.simons.ca/en/women-clothing/dresses/fit-flare/country-linen-dress--6914-21439?catId=6680&colourId=49#zoom"
     })

outfit_classic_4 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_suspenderdress.jpg",
      text: "Suspender Midi Dress",
      link: "https://www.simons.ca/en/women-clothing/skirts/midi/suspender-midi-skirt--6914-21380?catId=c7038&colourId=44#zoom"
    })

outfit_classic_5 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_knotteddress.jpg",
      text: "Knotted Dress ",
      link: "https://www.simons.ca/en/women-clothing/dresses/fit-flare/broderie-anglaise-knotted-dress--8535-19076?catId=c7038&colourId=20"
    })

outfit_classic_6 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_cottonmididress.jpg",
      text: "Midi Shirt Dress",
      link: "https://www.simons.ca/en/women-clothing/dresses/shirt-dresses/striped-poplin-midi-shirtdress--14509-21907?catId=c1522&colourId=66"
    })

outfit_classic_7 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_floralblouse.jpg",
      text: "Floral Blouse",
      link: "https://www.simons.ca/en/women-clothing/blouses-shirts/blouses/loose-floral-breeze-blouse--12704-22184?catId=c1522&colourId=15"
    })

outfit_classic_8 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_slimanklepants.jpg",
      text: "Slim Ankle Pants",
      link: "https://www.simons.ca/en/women-clothing/pants/semi-slim/semi-slim-ankle-pant--11664-20709?catId=8775&colourId=11"
    })

outfit_classic_9 = Outfit.create(
    {
      style_id: styles[2].id,
      image: "/assets/classic_outfits/classic_tiebeltdress.jpg",
      text: "Tie Belt Dress",
      link: "https://www.simons.ca/en/women-clothing/dresses/straight/printed-tie-belt-dress--12562-21644?catId=c1522&colourId=79"
   })


# ROMANTIC, STYLE_ID = 3

outfit_romantic_1 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_palebluedress.jpg",
    text: "Pale Blue Dress",
    link: "https://shop.nordstrom.com/s/ted-baker-london-meline-side-bow-detail-dress/5213188?origin=coordinating-5213188-0-2-PDP_1-recbot-also_viewed&recs_placement=PDP_1&recs_strategy=also_viewed&recs_source=recbot&recs_page_type=product&recs_seed=5194339"
   })

outfit_romantic_2 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_knitdress.jpg",
    text: "Knit Dress",
    link: "https://shop.nordstrom.com/s/ted-baker-london-vellia-flippy-knit-skater-dress/5194339?origin=coordinating-5194339-0-4-PDP_1-recbot-also_viewed&recs_placement=PDP_1&recs_strategy=also_viewed&recs_source=recbot&recs_page_type=product&recs_seed=5194340"
  })

outfit_romantic_3 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_skaterdress.jpg",
    text: "Skater Dress",
    link: "https://shop.nordstrom.com/s/ted-baker-london-chestna-oracle-skater-dress/5213185?origin=coordinating-5213185-0-2-PDP_1-recbot-also_viewed&recs_placement=PDP_1&recs_strategy=also_viewed&recs_source=recbot&recs_page_type=product&recs_seed=5194340"
  })

outfit_romantic_4 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_lacetop.jpg",
    text: "Lace Top",
    link: "https://shop.nordstrom.com/s/free-people-daniella-lace-top/4826512?origin=category-personalizedsort&fashioncolor=BLUE"
  })

outfit_romantic_5 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_offtheshoulder.jpeg",
    text: "Off The Shoulder Dress",
    link: "https://shop.nordstrom.com/s/eliza-j-off-the-shoulder-ruffle-sheath-dress-regular-petite/4566687?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FDresses&color=blue"
  })

outfit_romantic_6 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_flaredress.jpg",
    text: "Flare Dress",
    link: "https://shop.nordstrom.com/s/ieena-for-mac-duggal-double-v-neck-fit-flare-party-dress/5161414?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FDresses&color=black"
  })

outfit_romantic_7 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_highlowdress.jpg",
    text: "High Low Dress",
    link: "https://shop.nordstrom.com/s/xscape-high-low-dress/4572231?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FDresses&color=black"
  })

outfit_romantic_8 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_ruffledress.jpg",
    text: "Ruffle Dress",
    link: "https://shop.nordstrom.com/s/wayf-chelsea-tiered-ruffle-maxi-dress-regular-plus/4926277?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FDresses&color=lilac%20blossom%20floral"
  })

outfit_romantic_9 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_lacedress.jpg",
    text: "Lace Midi Dress",
    link: "https://shop.nordstrom.com/s/astr-the-label-lace-midi-dress/4565648?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FDresses&color=aqua"
  })

outfit_romantic_9 = Outfit.create(
  {
    style_id: styles[3].id,
    image: "/assets/rom_outfits/rom_lacedress.jpg",
    text: "Lace Midi Dress",
    link: "https://shop.nordstrom.com/s/astr-the-label-lace-midi-dress/4565648?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FDresses&color=aqua"
  })

# URBAN, STYLE_ID = 4
outfit_urban_1 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_adidas.jpg",
    text: "Adidas Crop Hoodie",
    link: "https://www.zumiez.com/adidas-3-stripe-green-crop-hoodie.html"
  })

outfit_urban_2 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_trackjacket.jpg",
    text: "Adidas Track Jacket",
    link: "https://www.zumiez.com/adidas-3-stripe-tulle-red-track-jacket.html"
  })

outfit_urban_3 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_mididress.jpg",
    text: "Midi Dress",
    link: "https://urban-planet.com/collections/si_dresses_shop-all-dresses/products/0930-30680644-contrast-side-stripe-sleeveless-scoop-neck-midi-dress"
  })

outfit_urban_4 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_minidress.jpg",
    text: "Short Sleeve Mini Dress",
    link: "https://urban-planet.com/collections/si_dresses_shop-all-dresses/products/0927-39075230-check-short-sleeve-shirt-mini-dress"
  })

outfit_urban_5 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_pullover.jpg",
    text: "Pullover Hoodie",
    link: "https://www.karmaloop.com/product/champion-red-the-women-s-reverse-weave-cropped-colorblock-pullover-hood-in-red-spark-oxford-grey-and-imperial-indigo"
  })

outfit_urban_6 = Outfit.create(
    {
      style_id: styles[4].id,
      image: "/assets/urban_outfits/urban_dickiestop.jpg",
      text: "Dickies Boyfriend Shirt",
      link: "https://www.asos.com/dickies/dickies-boyfriend-t-shirt-with-front-logo/prd/7965170?clr=bk-black&colourWayId=15365322&SearchQuery=&cid=25647&gridcolumn=2&gridrow=10&gridsize=4&pge=1&pgesize=72&totalstyles=243"
    })

outfit_urban_7 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_sportsjacket.jpg",
    text: "Denim Jacket",
    link: "https://www.urbanoutfitters.com/en-ca/shop/lacoste-allover-print-denim-bomber-jacket?category=womens-clothing&color=092"
  })

outfit_urban_8 = Outfit.create(
  {
    style_id: styles[4].id,
    image: "/assets/urban_outfits/urban_widelegpants.jpg",
    text: "Wide Leg pants",
    link: "https://shop.lululemon.com/p/women-pants/On-The-Fly-Pant-Wide-Leg-31/_/prod8980322?color=34201"
  })

outfit_urban_9 = Outfit.create(
    {
      style_id: styles[4].id,
      image: "/assets/urban_outfits/urban_beltbag.jpg",
      text: "Leather Belt Bag",
      link: "https://www.urbanoutfitters.com/en-ca/shop/adidas-originals-faux-leather-belt-bag?category=womens-clothing&color=001"
    })
  

#USER OUTFITS
user_outfit2 = UserOutfit.create(
  {
    user_id: 1,
    outfit_id: outfit_ag_1.id
  })
