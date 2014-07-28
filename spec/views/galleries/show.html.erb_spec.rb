require 'spec_helper'

describe "galleries/show" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
