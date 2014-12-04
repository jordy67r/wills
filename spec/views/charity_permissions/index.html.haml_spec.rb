require 'spec_helper'

describe "charity_permissions/index" do
  before(:each) do
    assign(:charity_permissions, [
      stub_model(CharityPermission,
        :permission => false,
        :will => nil
      ),
      stub_model(CharityPermission,
        :permission => false,
        :will => nil
      )
    ])
  end

  it "renders a list of charity_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
