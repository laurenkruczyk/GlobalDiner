require 'spec_helper'

feature "User visits world cuisine", %Q{
  As an interested user
  I want to click on nav bar links
  so that I can navigate through the recipe site
} do
  

   scenario 'visit world cuisine' do
    visit country_meals_path

    expect(page).to have_content(@meal.country.name)
    expect(page).to have_content(@meal.description)

    expect(page).to have_content("Around the World")
    expect(page).to have_content("Let's Dish!")
    expect(page).to have_content("View Recipe")
    expect(page).to have_content("Global Diner")

    click_on "View Recipe"
  end

   scenario 'visit spice it up' do
    visit random_meals_path

    expect(page).to have_content(@meal.country.name)
    expect(page).to have_content(@meal.url)
    expect @meals.to eql(1)

    expect(page).to have_content("Created")
    expect(page).to have_content("So what's it like?")
    expect(page).to have_content("View Recipe")
    expect(page).to have_content("Global Diner")

    click_on "View Recipe"
  end
end




