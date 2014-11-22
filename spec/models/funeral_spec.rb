require 'spec_helper'

describe Funeral do

  subject { @funeral }

  it "should have a valid factory do" do
    FactoryGirl.build(:funeral).should be_valid
  end

  it "should validate preferance correctly" do
    FactoryGirl.build(:funeral, preference: "").should_not be_valid
  end

  it "should validate wishes correctly" do
    FactoryGirl.build(:funeral, wishes: "a" * 2000).should_not be_valid
  end

  it "should validate specific_organs correctly" do
    FactoryGirl.build(:funeral, specific_organs: "a" * 200).should_not be_valid
  end

end