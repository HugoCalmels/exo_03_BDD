# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  #1 creating entries at city table
    10.times do city = City.create(city_name: Faker::Address.city) end
  
  #2 creating entries at user table
    10.times do user = User.create(user_first_name: Faker::Name.first_name, user_last_name: Faker::Name.last_name, description: Faker::Quote.yoda, email: Faker::Internet.email, age: Faker::Number.between(from: 9, to: 99), city: City.find(rand(1..10))) end 
  
  #3 creating entries at gossip table
    20.times do gossip = Gossip.create(gossip_title_name: Faker::Quote.yoda, gossip_content: Faker::Quote.yoda, user: User.find(rand(1..10)), tag: Tag.find(rand(1..10)), like: Like.find(rand(1..10))) end
  
  #4 creating entries at tag table  
    10.times do tag = Tag.create(tag_title_name: Faker::Color.color_name, gossip: Gossip.find(rand(1..10))) end
  
  #5 creating entries at sender
    10.times do sender = Sender.create(user: User.find(rand(1..10))) end
  
  #6 creating entries at receiver
    10.times do receiver = Receiver.create(user: User.find(rand(1..10))) end
  
  #7 creating entries at like table
    20.times do like = Like.create(user: User.find(rand(1..10))) end
  
  #8 creating entries at privatemessage
    10.times do privatemessage = Privatemessage.create(private_message_content: Faker::Quotes::Shakespeare.as_you_like_it_quote, sender: Sender.find(rand(1..10)), receiver: Receiver.find(rand(1..10))) end
  
  #9 creating entries at commentaire
    10.times do commentaire = Commentaire.create(comment_content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote, gossip: Gossip.find(rand(1..10)), user: User.find(rand(1..10))) end