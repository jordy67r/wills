require 'spec_helper'

describe Funeral do

  subject { @funeral }

  it "should have a valid factory do" do
    FactoryGirl.build(:funeral).should be_valid
  end

  it "should validate preferance correctly" do
    FactoryGirl.build(:funeral, preference: "").should_not be_valid
    FactoryGirl.build(:funeral, preference: "a" * 2001).should_not be_valid
  end

  it "should validate specific_organs correctly" do
    FactoryGirl.build(:funeral, specific_organs: "").should_not be_valid
    FactoryGirl.build(:funeral, specific_organs: "a" * 2001).should_not be_valid
  end

end