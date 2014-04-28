require 'spec_helper'

feature "User adds a recipe", %Q{
  As an interested user
  I want to add a recipe
  So I can contribute a tasty dish to the site
} do


  let!(:country) {FactoryGirl.create(:country)}
  let!(:user) {FactoryGirl.create(:user)}
  before :each do 
    visit new_country_meal_path(country)
  end

  scenario "With valid attributes" do
    prev_count = Meal.count
    sign_in_as(user)
    visit new_country_meal_path(country)

    fill_in "Name", with: 'Yummy'
    fill_in "Url", with: 'yummy.com'
    fill_in "Description", with: 'yummy yummy yummy'
    select country.name, from: 'Country'

    click_on "Create Meal"

    expect(page).to have_content('Yummy')
    expect(page).to have_content('View recipe')
    expect(page).to have_content('yummy yummy yummy')    
    # expect(page).to have_content("Successfully created recipe")
    expect(Meal.count).to eq(prev_count + 1)
  end

  scenario "without required attributes" do
     click_on "Create Meal"
     expect(page).to have_content("can't be blank")
     fill_in "Name", with: 'yummy dish'
     click_on "Create Meal"

     expect(page).to have_content("Urlcan't be blank")
     expect(page).to have_content("Descriptioncan't be blank")
     expect(page).to have_content("can't be blank")
   end
  end