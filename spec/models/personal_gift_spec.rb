require 'spec_helper'

describe PersonalGift do

  subject { @personal_gift }

  it "should have a valid factory do" do
    FactoryGirl.build(:personal_gift).should be_valid
  end

  it "should validate description correctly" do
    FactoryGirl.build(:personal_gift, description: "a" * 1001).should_not be_valid
  end

end