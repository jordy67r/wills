require 'spec_helper'

describe CharitableDonation do

  subject { @charitable_donations }

  it "should have a valid factory do" do
    FactoryGirl.build(:charitable_donation).should be_valid
  end

end