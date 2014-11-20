require 'spec_helper'

describe Will do
  
  before { @will = Will.new(title: "My Will", user_id: false) }

  subject { @will }

  it { should respond_to(:title) }
  it { should respond_to(:user_id) }

  it "should have a valid factory" do
    FactoryGirl.build(:will).should be_valid
  end


end

