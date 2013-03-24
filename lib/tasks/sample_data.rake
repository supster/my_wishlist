namespace :db do
 desc "Fill vendor with sample data" 
 task populate: :environment do
    make_vendors
    make_users
    make_reviews
 end
 #populate vendors
 def make_vendors
   vendor = Vendor.create!(name: "Amazon", description: "Largest online retailer in the world",
                          street_address: "501 Avenue of the Americas", city: "New York", state_abbr: "NY", zip_code: "10011",  
                          url: "http://www.amazon.com")
                
   99.times do |n|
     name = Faker::Company.name
     description = Faker::Company.catch_phrase
     street_address = Faker::Address.street_address
     city = Faker::Address.city
     state_abbr = Faker::Address.state_abbr
     zip_code = Faker::Address.zip_code
     url = Faker::Internet.url
     Vendor.create!(name: name, description: description, 
                    street_address: street_address, city: city, state_abbr: state_abbr, zip_code: zip_code, 
                    url: url)
   end
 end
    
 #populate users
 def make_users
   user = User.create!(name: "Supatra Indharameesup", email: "superspt@gmail.com", 
                password: "oil123", password_confirmation: "oil123")
                
   19.times do |n|
     name = Faker::Name.name
     email = "example#{n+1}@rails.com"
     password = "password"
     User.create!(name: name, email: email, password: password, password_confirmation: password)
   end
 end
 
 #populate reviews
 def make_reviews
  users = User.all(limit: 20)
  #vendors = Vendor.all(limit: 60)
  users.each do |user|
    #vendors.each do |vendor|
      for i in 1..40
        review_text = Faker::Lorem.paragraph(5)
        review_score = [1,2,3,4,5].sample
        review = user.reviews.build(review_text: review_text, review_score: review_score) 
        review.vendor_id = (1..100).to_a.sample
        review.save!
        end
    #end
  end
 end

end