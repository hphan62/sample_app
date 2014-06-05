require 'spec_helper'

describe "StaticPages" do
   
  #let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', :text => "#{heading}") }
    it { should have_title(full_title("#{page_title}")) }
  end
  
  describe "Home page" do
    
    before { visit root_path }
    
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }
    it_should_behave_like "all static pages" 
  
    it{ page.should_not have_title('| Home') }
    
  end
  
  describe "Help page" do
    
    before { visit help_path }
    
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }
    
    it_should_behave_like "all static pages" 
  
  end

  describe "About page" do
  
    before { visit about_path }
    
    let(:heading)    { 'About Us' }
    let(:page_title) { 'About' }
    
    it_should_behave_like "all static pages"
    
  end
  
  describe "Contact" do
 
    before { visit contact_path }
    
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }
    
    it_should_behave_like "all static pages"
    
  end
  
  # Testing the links
  it "should have the correct 'About' links on the layout" do
    visit root_path
    click_link "About"
    page.should have_title(full_title('About Us'))
  end
  it "should have the correct 'Help' links on the layout" do
    visit root_path
    click_link "Help"
    page.should have_title(full_title('Help'))
  end
  it "should have the correct 'Contact' links on the layout" do
    visit root_path    
    click_link "Contact"
    page.should have_title(full_title('Contact'))
  end
  it "should have the correct 'Sign up now!' links on the layout" do
    visit root_path
    click_link "Sign up now!"
    page.should have_title(full_title('Sign up'))
  end
  it "should have the correct 'Sample App' links on the layout" do
    visit root_path
    click_link "sample app"
    page.should have_title(full_title(''))
  end  
end

