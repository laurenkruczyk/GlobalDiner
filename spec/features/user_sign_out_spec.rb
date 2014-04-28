require 'spec_helper'

feature 'user sign out', %Q{
  As an authenticated user
  I want to sign out
  So that I can exit the system
} do


  scenario 'A signed-in user can log out of his account' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
      # Failure/Error: sign_in_as(user)
      #  NoMethodError:
      #  undefined method `sign_in_as' 
      #  for #<RSpec::Core::ExampleGroup::Nested_4:0x007fb2a7ca4188>    
    click_on 'Sign Out'

    expect(page).to have_content("Signed out successfully.")
    expect(current_path).to eql(root_path)

  end
end