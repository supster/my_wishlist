namespace :db do
 desc "Fill vendor with sample data" 
 task populate: :environment do
   vendor = Vendor.create!(name: "Amazon", description: "Largest online retailer in the world",
                          street_address: "501 Avenue of the Americas", city: "New York", state_abbr: "NY", zip_code: "10011",  
                          url: "http://www.amazon.com")
                
   20.times do |n|
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
end