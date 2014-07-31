require 'spec_helper'
describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Photos'" do
      visit photos_path 
      expect(page).to have_content('Photos')
    end
  end
end