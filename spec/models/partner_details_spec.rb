require 'spec_helper'

describe PartnerDetail do

  subject { @partner_detail }

  it "should have a valid factory do" do
    FactoryGirl.build(:partner_detail).should be_valid
  end

  it "should validate phone number correctly" do
    FactoryGirl.build(:partner_detail, phone_no: "").should_not be_valid
    FactoryGirl.build(:partner_detail, phone_no: "1" * 21).should_not be_valid
  end
end