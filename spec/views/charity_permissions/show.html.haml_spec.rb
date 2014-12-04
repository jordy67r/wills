require 'spec_helper'

describe "charity_permissions/show" do
  before(:each) do
    @charity_permission = assign(:charity_permission, stub_model(CharityPermission,
      :permission => false,
      :will => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
