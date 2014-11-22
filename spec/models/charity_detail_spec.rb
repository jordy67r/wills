require 'spec_helper'

describe CharityDetail do

  subject { @charity_detail }

  it "should have valid factory" do
    FactoryGirl.build(:charity_detail).should be_valid
  end

  it "should validate name correctly" do
    FactoryGirl.build(:charity_detail, name: "").should_not be_valid
    FactoryGirl.build(:charity_detail, name: "a" * 201).should_not be_valid
  end

    it "should validate charity number correctly" do
    FactoryGirl.build(:charity_detail, registered_charity_number: "").should_not be_valid
    FactoryGirl.build(:charity_detail, registered_charity_number: "a" * 21).should_not be_valid
  end

 it "should validate postcode correctly" do
    FactoryGirl.build(:charity_detail,postcode: "").should_not be_valid
    FactoryGirl.build(:charity_detail,postcode: "a" * 11).should_not be_valid
  end

  it "Should validate address one" do
    FactoryGirl.build(:charity_detail,address_one: "").should_not be_valid
    FactoryGirl.build(:charity_detail,address_one: "a" * 101).should_not be_valid
  end

  it "should validate address two" do
    FactoryGirl.build(:charity_detail,address_two: "a" * 101).should_not be_valid
  end

  it "should validate city name" do
    FactoryGirl.build(:charity_detail,city: "").should_not be_valid
    FactoryGirl.build(:charity_detail,city: "a" * 101).should_not be_valid
  end

  it "should validate county name" do
    FactoryGirl.build(:charity_detail,county: "").should_not be_valid
    FactoryGirl.build(:charity_detail,county: "a" * 101).should_not be_valid
  end

  it "should validate country name" do
    FactoryGirl.build(:charity_detail,country: "").should_not be_valid
    FactoryGirl.build(:charity_detail,country: "a" * 101).should_not be_valid
  end
end