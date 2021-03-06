require 'spec_helper'

feature 'user signs up', %Q{
  As a non-user
  I want to register for the site
  So I can be a contributing member
  } do

  
    before :each do
           visit root_path
      click_link 'Sign Up'
    end


    scenario 'user specifies valid and required information' do
      user = FactoryGirl.build(:user)
      fill_in 'Email', with: user.email
      fill_in 'user_password', with: user.password
      fill_in 'First name', with: user.first_name
      fill_in 'Last name', with: user.last_name
      fill_in 'Password confirmation', with: user.password
      click_button 'Sign up'
      expect(page).to have_content("Sign Out")
      expect(page).to have_content ("Welcome! You have signed up successfully.")
      expect(current_path).to eql(root_path)
    end


    scenario 'required information is not supplied' do
      click_button 'Sign up'
      expect(page).to have_content("can't be blank")
      expect(page).to_not have_content("Sign Out")
    end

    scenario 'email is already registered' do
      user = FactoryGirl.create(:user)
      fill_in 'Email', with: user.email
      fill_in 'user_password', with: user.password
      fill_in 'First name', with: user.first_name
      fill_in 'Last name', with: user.last_name
      fill_in 'Password confirmation', with: user.password
      click_button 'Sign up'

      expect(page).to_not have_content("Sign Out")
    end


    scenario 'password confirmation does not match' do
      fill_in 'user_password', with: 'password'
      fill_in 'Password confirmation', with: 'anotherpasssword'
      click_button 'Sign up'

      expect(page).to have_content ("doesn't match Password")
      expect(page).to_not have_content("Sign Out")
    end
  end

  
