require 'spec_helper'

describe CashGift do

  subject { @cash_gift }

  it "should have a valid factory do" do
    FactoryGirl.build(:cash_gift).should be_valid
  end

  it "should have a valid amount of money" do
  	FactoryGirl.build(:cash_gift,amount: "1" * 21).should_not be_valid
  end
end