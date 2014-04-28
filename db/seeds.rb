require 'csv'

countries = Rails.root.join('lib', 'assets', 'countries.csv')
CSV.foreach(countries, headers: true) do |row|
  Country.find_or_create_by(name: row['name'], iso: row['iso'])
end

user = User.where(email: 'lauren.kruczyk@gmail.com').take
meals = [
  {
    name: 'Grecian Pork Tenderloin',
    url: 'http://allrecipes.com/Recipe/Grecian-Pork-Tenderloin/Detail.aspx?evt19=1',
    description: 'Lean and tender pork tenderloins with zesty marinade.',
    country: Country.where(name: 'Greece').take,
    user: user
  },
  {
    name: 'Souvlaki',
    url: 'http://allrecipes.com/Recipe/Souvlaki/Detail.aspx?evt19=1',
    description: 'The pork is marinated in a lemony olive oil mixture. Serve with rice pilaf and a Greek salad.',
    country: Country.where(name: 'Greece').take,
    user: user
  },
   {
    name: 'Double Tomato Bruschetta',
    url: 'http://allrecipes.com/Recipe/Double-Tomato-Bruschetta/Detail.aspx?evt19=1',
    description: 'A delicious and easy appetizer. The balsamic vinegar gives it a little bite. Best with fresh basil.',
    country: Country.where(name: 'Italy').take,
    user: user
  },
   {
    name: 'Bucatini All Amatriciana',
    url: 'http://www.bonappetit.com/recipe/bucatini-all-amatriciana-2',
    description: 'This classic sauce takes its spiciness from black pepper and dried chiles and its depth of flavor from guanciale, Italian salt-cured pork jowl.',
    country: Country.where(name: 'Italy').take,
    user: user
  },
   {
    name: 'Trenette with Pesto Genova-Style',
    url: 'http://www.lidiasitaly.com/recipes/detail/994',
    description: 'Traditionally, long, flat trenette or shorter twisted trofie is the pasta used here. For the most authentic flavor, use a sweet, small-leaved Genovese basil for the pesto.',
    country: Country.where(name: 'Italy').take,
    user: user
  },
   {
    name: 'Lamb Shank Vindaloo',
    url: 'http://allrecipes.com/recipe/lamb-shank-vindaloo/',
    description: 'This Indian curry dish is fiery and spicy. Great served with potatoes.',
    country: Country.where(name: 'India').take,
    user: user
  },
   {
    name: 'Australian BBQ Meatballs',
    url: 'http://allrecipes.com/Recipe/Australian-BBQ-Meatballs/Detail.aspx?prop24=hn_slide1_Australian-BBQ-Meatballs&evt19=1',
    description: 'Meatballs with a kick, and a touch of curry.',
    country: Country.where(name: 'Australia').take,
    user: user
  },
   {
    name: 'Drunken Noodles (Pad Kee Mao)',
    url: 'http://www.aspicyperspective.com/2014/01/drunken-noodles-pad-kee-mao.html',
    description: 'So spicy, those partaking get drunk in the process of trying to quench their thirst!',
    country: Country.where(name: 'Thailand').take,
    user: user
  },
   {
    name: 'Tom Yum Goong Soup',
    url: 'http://www.foodnetwork.com/recipes/tyler-florence/hot-and-sour-thai-soup-tom-yum-goong-recipe.html',
    description: 'The basic broth is made of stock and fresh ingredients including lemongrass, kaffir lime leaves, galangal, lime juice, fish sauce, and crushed chili peppers. Yum!',
    country: Country.where(name: 'Thailand').take,
    user: user
  },
   {
    name: 'Tomato and Onion Chutney',
    url: 'http://www.wikihow.com/Make-Tomato-and-Onion-Chutney',
    description: 'Tomato chutney goes well with idli, dosa, appe, and even chapathi or puri. A balanced dose of onion, curry leaves and red chillies gives it a spicy feel.',
    country: Country.where(name: 'India').take,
    user: user
  },
   {
    name: 'Poutine',
    url: 'http://www.foodnetwork.com/recipes/emeril-lagasse/poutine-fries-and-gravy-recipe.html',
    description: 'Poutine is a common Canadian dish, originally from Quebec, made with french fries and topped with a light brown gravy-like sauce and cheese curds.',
    country: Country.where(name: 'Canada').take,
    user: user
  },
   {
    name: 'Salty Dog',
    url: 'http://www.realsimple.com/food-recipes/recipe-collections-favorites/american-recipes-00000000061159/page11.html',
    description: 'Top a hot dog with mustard, crunchy bacon, and bread-and-butter pickles for a sweet and salty twist on a classic.',
    country: Country.where(name: 'United States').take,
    user: user
  },
   {
    name: 'Ras Malai',
    url: 'http://allrecipes.com/recipe/ras-malai/',
    description: 'Ras Malai is cheese dumplings in cream sauce. This is a popular Pakistani/Indian dessert and takes a long time to prepare the traditional way. Delicious!',
    country: Country.where(name: 'Pakistan').take,
    user: user
  }
]
 
meals.each do |meal|
  Meal.find_or_create_by(meal)
end
