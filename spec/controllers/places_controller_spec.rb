require 'spec_helper'

describe PlacesController do

  describe 'GET home' do

    describe "When User is not signed in" do
     it "renders the home page" do
     	get 'index'
     	response.should be_success
     end
    end

    describe "When User is signed in ." do

     it "renders the home page" do
        visit '/'
       # find('h1', :visible => true).text.should == "Around The World"
       # wait_until{ page.has_content?('Around The World')}
       # find(:html, 'h1').text.should == "Around The World"
       # page.should include("Around The World")
       # page.should have_css('h1', :text => "Around The World")
       # page.should have_selector('h1')
       # expect(page).to have_content "Around The World"
       save_and_open_page
     
     click_link "Sign up"
     expect(page).to have_content "Click here to return to the Home Page"
     
     fill_in "Email", :with => "test@test.com"
     fill_in "Password", :with => "tacotaco"
     fill_in "Password confirmation", :with => "tacotaco"
     click_button "Sign up"
     expect(page).to have_content "Success"
     end
    end
  



  end



end