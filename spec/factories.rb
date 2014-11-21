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

  factory :charity_detail do
    will_id 1
    name "biscuits"
    registered_charity_number "212121"
    address_one "2 whiffler Raod"
    address_two "Sweet Briar"
    city "Norwich"
    county "Norfolk"
    postcode "NR3 2BN"    
    country "United_Kingdom"
  end 

  #factory :test_personal_details do
    #Cont_no "01603920047"
    #Gender male
    #DOB "15/oct/1990"
    #Country "United_Kingdom"
    #children true
    #chilren_under true
    #planned_marry true
    #effect_if_not true
    #tax no 
    #mirror_will true
  #end

  factory :partner_detail do
    will_id 1
    phone_no "01603920047"
    gender "male"
    dob "15/oct/1990"
    domicile_country "United_Kingdom"
  end 

  factory :funeral do
    will_id 1
    preference "i_have_no_preference"
    wishes "I would like music to play all day"
    donate_organs "yes,_specific_organs"
    specific_organs "eyes"
  end

  factory :executor do
    will_id 1
    notary_express no
    first true
    second no
  end

  factory :administrator do
    will_id 1
    accept_admin true
  end

  factory :guardian do
    will_id 1
    appoint_future_guardians true
    appoint_current_guardians true
  end


  factory :cash_gift do
    will_id 1
    shared_to "all of my children"
    amount "2000"
    certain_age "21"
    if_dead "Allocated to their child(ren)"
    certain_age_if_dead "21"
  end

  factory :charitable_donation do
    will_id 1
    charity_id 1
    amount "1000"
    instruction "reasearch ino cancer"
    allow_alternate true
  end

  factory :property do
    will_id 1
    sole_residence true
    recipient_no 2
    joint_or_common "joint_tenants"
    responsible_for_charges true 
    as_cash_if_sold true
    held_in_trust true
    life_beneficiary_no 2
  end

  factory :personal_gift do
    will_id 1
    description "silver pocket watch"
    as_cash_if_sold true  
  end   


end