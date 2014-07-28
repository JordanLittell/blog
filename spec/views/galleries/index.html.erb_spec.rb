require 'spec_helper'

describe "galleries/index" do
  before(:each) do
    assign(:galleries, [
      stub_model(Gallery),
      stub_model(Gallery)
    ])
  end

  it "renders a list of galleries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
