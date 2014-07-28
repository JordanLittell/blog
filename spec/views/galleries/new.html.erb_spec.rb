require 'spec_helper'

describe "galleries/new" do
  before(:each) do
    assign(:gallery, stub_model(Gallery).as_new_record)
  end

  it "renders new gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", galleries_path, "post" do
    end
  end
end
