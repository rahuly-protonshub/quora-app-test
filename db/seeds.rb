# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(email: "test@test.com", password: "password",password_confirmation: "password")
user2 = User.create(email: "test@one.com", password: "password",password_confirmation: "password")

topic1 = Theme.find_or_create_by(description: "Travel and living", user_id: user1.id)
topic2 = Theme.find_or_create_by(description: "Machine learning and IOT", user_id: user2.id)
topic3 = Theme.find_or_create_by(description: "Web Technologies", user_id: user1.id)


question1 = Question.create(name: "What is the fare for travelling to italy from spain?",user_id: user1.id, theme_id:  topic1.id)
question2 = Question.create(name: "What is the fare for travelling to US?",user_id: user2.id, theme_id:  topic2.id)
question3 = Question.create(name: "What is the fare for travelling to France?",user_id: user1.id, theme_id:  topic3.id)
question4 = Question.create(name: "What is the fare for travelling to China?",user_id: user1.id, theme_id:  topic1.id)
question5 = Question.create(name: "What is the fare for travelling to london?",user_id: user2.id, theme_id:  topic3.id)


answer1 = Answer.create(description: "Lorem Lorem lopsom",user_id: user1.id, question_id:  question1.id)
answer2 = Answer.create(description: "Lorem em lopsom",user_id: user1.id, question_id:  question2.id)
answer3 = Answer.create(description: "lopsom",user_id: user1.id, question_id:  question3.id)
answer4 = Answer.create(description: "Lorem Lorem  Gsad lopsom",user_id: user2.id, question_id:  question3.id)