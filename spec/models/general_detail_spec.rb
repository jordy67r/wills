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
    FactoryGirl.build(:general_detail, first_name: "a" * 201).should_not be_valid
  end

end
