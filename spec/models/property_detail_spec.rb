require 'spec_helper'

describe PropertyDetail do

  subject { @property_details }

  it "should have a valid factory do" do
    FactoryGirl.build(:property_detail).should be_valid
  end

  it "should validate land registry number" do
    FactoryGirl.build(:property_detail,land_reg_number: "1" * 21).should_not be_valid
  end

    it "should validate postcode correctly" do
    FactoryGirl.build(:property_detail,postcode: "").should_not be_valid
    FactoryGirl.build(:property_detail,postcode: "a" * 11).should_not be_valid
  end

  it "Should validate address one" do
    FactoryGirl.build(:property_detail,address_one: "").should_not be_valid
    FactoryGirl.build(:property_detail,address_one: "a" * 101).should_not be_valid
  end

  it "should validate address two" do
    FactoryGirl.build(:property_detail,address_two: "a" * 101).should_not be_valid
  end

  it "should validate city name" do
    FactoryGirl.build(:property_detail,city: "").should_not be_valid
    FactoryGirl.build(:property_detail,city: "a" * 101).should_not be_valid
  end

  it "should validate county name" do
    FactoryGirl.build(:property_detail,county: "").should_not be_valid
    FactoryGirl.build(:property_detail,county: "a" * 101).should_not be_valid
  end

  it "should validate country name" do
    FactoryGirl.build(:property_detail,country: "").should_not be_valid
    FactoryGirl.build(:property_detail,country: "a" * 101).should_not be_valid
  end

end
