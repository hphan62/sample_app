require 'spec_helper'

describe "StaticPages" do
   
  #let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  
  describe "Home page" do
    before { visit root_path }
      
    it {
      #visit '/static_pages/home'
      #visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    }
    
    it {
      #visit '/static_pages/home'
      #visit root_path
      #page.should have_title("Ruby on Rails Tutorial Sample App | Home")
      page.should have_title(full_title(''))
    }
    
    it{
      #visit '/static_pages/home'
      #visit root_path
      page.should_not have_title('| Home')
    }
    
  end
  
  describe "Help page" do
    
    before { visit help_path }
   
    it {
      #visit '/static_pages/help'
      #visit help_path
      page.should have_selector('h1', :text => 'Help')
    }
    
    it {
      #visit '/static_pages/help'
      #visit help_path
      page.should have_title(full_title('Help'))
    }
    
    
  end

  describe "About page" do
  
    before { visit about_path }
      
    it {
      #visit '/static_pages/about'
      #visit about_path
      page.should have_selector('h1', :text => 'About Us')
    }
    
    it {
      #visit '/static_pages/about'
      visit about_path
      page.should have_title(full_title('About'))
    }
    
  end
  
  describe "Contact" do
 
    before { visit contact_path }
    
    it {
      #visit '/static_pages/contact'
      #visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    }
    
    it {
      #visit '/static_pages/contact'
      #visit contact_path
      page.should have_title(full_title('Contact'))
    }    
    
  end
  
  
end

