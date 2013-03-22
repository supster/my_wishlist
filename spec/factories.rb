FactoryGirl.define do
  factory :vendor do
    name        "Amazon"
    description "Largest online retailer in the world"
    street_address "501 Avenue of the Americas"
    city "New York"
    state_abbr "NY"
    zip_code "10011" 
    url         "http://www.amazon.com"
  end
end