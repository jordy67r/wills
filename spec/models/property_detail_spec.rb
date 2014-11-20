require 'spec_helper'

describe PropertyDetail do

  subject { @property_details }

  it "should have a valid factory do" do
    FactoryGirl.build(:property_detail).should be_valid
  end

end
