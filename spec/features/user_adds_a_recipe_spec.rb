require 'spec_helper'

feature "User adds a recipe", %Q{
  As an interested user
  I want to add a recipe
  So I can contribute a tasty dish to the site
} do

  before :each do
    @country = FactoryGirl.build(:country)
    visit new_country_meal_path 
        # Failure/Error: visit new_country_meal_path
        # ActionController::UrlGenerationError:
        # No route matches {:action=>"new", :controller=>"meals"} 
        # missing required keys: [:country_id]
  end


  scenario "With valid attributes" do

    fill_in "Name", with: @meal.name
    fill_in "Url", with: @meal.url
    fill_in "Description", with: @meal.description
    select "India", from: 'Country'

    click_on "Create Meal"

    expect(page).to have_content (@meal.name)
    expect(page).to have_content (@meal.url)
    expect(page).to have_content (@meal.description)
    expect(page).to have_content ("Successfully created meal.")
    expect(Meal.count).to eq prev_count + 1
  end

  scenario "without required attributes" do
     click_on "Create Meal"
     expect(page).to have_content ("can't be blank")
     fill_in "Name", with: @meal.name
     click_on "Create Meal"

     expect(page).to have_content ("can't be blank")
   end
  end