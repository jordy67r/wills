require 'spec_helper'

describe Property do

  subject { @property }

  it "should have a valid factory do" do
    FactoryGirl.build(:property).should be_valid
  end

end