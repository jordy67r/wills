require 'spec_helper'

describe GeneralDetail do

  subject { @general_details }

  it "should have valid factory" do
    FactoryGirl.build(:general_detail).should be_valid
  end

  it "should validate name correctly" do
    FactoryGirl.build(:general_detail, first_name: "").should_not be_valid
    FactoryGirl.build(:general_detail, first_name: "a" * 101).should_not be_valid
  end

  it "should validate mid name correctly" do
    FactoryGirl.build(:general_detail, middle_name: "").should_not be_valid
    FactoryGirl.build(:general_detail, middle_name: "a" * 201).should_not be_valid
  end

  it "should validate Surname correctly" do
    FactoryGirl.build(:general_detail,surname: "").should_not be_valid
    FactoryGirl.build(:general_detail,surname: "a" * 101).should_not be_valid
  end

  it "should validate postcode correctly" do
    FactoryGirl.build(:general_detail,postcode: "").should_not be_valid
    FactoryGirl.build(:general_detail,postcode: "a" * 11).should_not be_valid
  end

  it "Should validate address one" do
    FactoryGirl.build(:general_detail,address_one: "").should_not be_valid
    FactoryGirl.build(:general_detail,address_one: "a" * 101).should_not be_valid
  end

  it "should validate address two" do
    FactoryGirl.build(:general_detail,address_two: "a" * 101).should_not be_valid
  end

  it "should validate city name" do
    FactoryGirl.build(:general_detail,city: "").should_not be_valid
    FactoryGirl.build(:general_detail,city: "a" * 101).should_not be_valid
  end

  it "should validate county name" do
    FactoryGirl.build(:general_detail,county: "").should_not be_valid
    FactoryGirl.build(:general_detail,county: "a" * 101).should_not be_valid
  end

  it "should validate country name" do
    FactoryGirl.build(:general_detail,country: "").should_not be_valid
    FactoryGirl.build(:general_detail,country: "a" * 101).should_not be_valid
  end
end
