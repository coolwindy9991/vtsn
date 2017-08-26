# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             staff_id = "9999",
             activated: true,
             activated_at: Time.zone.now)

49.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  staff_id = "#{n+1}"
  User.create!(name:  name,
              email: email,
              staff_id: staff_id,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

users = User.order(:created_at).take(6)
50.times do
  staff_id = Faker::Number.number(5).to_s
  staff_name = Faker::Lorem.word
  users.each { |user| user.cs_evaluations.create!(staff_id: staff_id, staff_name: staff_name) }
end
(1..5).each do |i|
  CsSopQuestion.create!(question: "Question #{i}", is_active: true, question_type: "cssop00")
end

evaluations = CsEvaluation.order(:created_at).take(10)
evaluations.each do |e|
    Questionnaire.create!(evaluation_id: e.id, question_id: 1, answer: 1)
    Questionnaire.create!(evaluation_id: e.id, question_id: 2, answer: 1)
    Questionnaire.create!(evaluation_id: e.id, question_id: 3, answer: 1)
    Questionnaire.create!(evaluation_id: e.id, question_id: 4, answer: 1)
    Questionnaire.create!(evaluation_id: e.id, question_id: 5, answer: 1)
    Questionnaire.create!(evaluation_id: e.id, question_id: 6, answer: 1)
    Questionnaire.create!(evaluation_id: e.id, question_id: 7, answer: 1)
end