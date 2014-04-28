require 'spec_helper'

feature 'user sign in', %Q{
  As an unauthenticated user
  I want to sign in
  So that I can gain access to the system
} do

  
  before :each do
    @user = FactoryGirl.create(:user)
    visit new_user_session_path
  end
  
  scenario 'user provides valid information and signs in successfully' do
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Sign in'
    expect(page).to have_content("Welcome #{@user.first_name}")
    expect(page).to have_content ("Signed in successfully.")
  end


  scenario 'user provides invalid email' do
    fill_in 'Email', with: 'blahblah.com'
    fill_in 'Password', with: @user.password
    click_button 'Sign in'

    expect(page).to have_content("Forgot your password?")
    expect(page).to_not have_content("Signed in successfully.")
  end


  scenario 'user provides invalid password' do
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: 'hogwash'
    click_button 'Sign in'

    expect(page).to have_content("Forgot your password?")
    expect(page).to_not have_content("Signed in successfully.")
  end
end

