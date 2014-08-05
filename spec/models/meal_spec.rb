require 'spec_helper'

describe Meal do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:description)}
  it {should validate_presence_of(:user_id)}
  it {should validate_presence_of(:country_id)}
  it {should belong_to(:user)}
  it {should belong_to(:country)}
end

