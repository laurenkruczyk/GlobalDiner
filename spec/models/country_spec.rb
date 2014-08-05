require 'spec_helper'

describe Country do
  let!(:country) { FactoryGirl.create(:country) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:iso) }
  it { should validate_uniqueness_of(:iso) }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:meals) }
end

