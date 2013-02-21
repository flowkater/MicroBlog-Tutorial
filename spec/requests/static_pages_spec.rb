require 'spec_helper'

describe "StaticPages" do
  describe "HomePage" do
  	it "should have the content 'Sample App'" do
  		visit '/static_pages/home'
  		# page.should have_content('Sample App')
      page.should have_selector('h1', text: 'Sample App')
  	end

    it "it should have title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Home')
    end
  end

  describe "HelpPage" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

    it "it should have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', text: ' | Help')
    end
  end

  describe "AboutPage" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

    it "it should have title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', text: '| About Us')
    end
  end
end
