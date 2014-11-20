FactoryGirl.define do

  factory :will do
    title "My Will"
    user_id 1
  end

  factory :general_detail do
    will_id 1
    relationship "father"
    first_name "phill"
    middle_name "Frank"
    surname "Harrix"
    address_one "2 whiffler Raod"
    address_two "Sweet Briar"
    city "Norwich"
    county "Norfolk"
    postcode "NR3 2BN"    
    country "United_Kingdom"
  end

  factory :property_detail do
    will_id 1
    land_reg_number "232323"
    address_one "2 whiffler Raod"
    address_two "Sweet Briar"
    city "Norwich"
    county "Norfolk"
    postcode "NR3 2BN"    
    country "United_Kingdom"
  end



end