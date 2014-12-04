require 'spec_helper'

describe "charity_permissions/edit" do
  before(:each) do
    @charity_permission = assign(:charity_permission, stub_model(CharityPermission,
      :permission => false,
      :will => nil
    ))
  end

  it "renders the edit charity_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", charity_permission_path(@charity_permission), "post" do
      assert_select "input#charity_permission_permission[name=?]", "charity_permission[permission]"
      assert_select "input#charity_permission_will[name=?]", "charity_permission[will]"
    end
  end
end
