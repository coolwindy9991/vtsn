class AddCsSopQuestion < SeedMigration::Migration
  def up
    User.create!(name:  "Example User",
                email: "example@railstutorial.org",
                password:              "foobar",
                password_confirmation: "foobar",
                admin: true,
                staff_id: '9999',
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
    
    CsSopQuestion.create!(question: "Stand up. Greeting and smiling at passengers", question_type: "cssop00", is_active: true)
    CsSopQuestion.create!(question: "Receiving documents with two hands", question_type: "cssop00", is_active: true)
    CsSopQuestion.create!(question: "Explaining DGR instructions for passengers", question_type: "cssop00", is_active: true)
    CsSopQuestion.create!(question: "Indicating the final destination of baggage", question_type: "cssop00", is_active: true)
    CsSopQuestion.create!(question: "Stand up. Explain boarding pass's details" , question_type: "cssop00", is_active: true)
    CsSopQuestion.create!(question: "Smile and return all documents to passengers", question_type: "cssop00", is_active: true)
    CsSopQuestion.create!(question: "Show passengers go through CIQ" , question_type: "cssop00", is_active: true)
  end
end
