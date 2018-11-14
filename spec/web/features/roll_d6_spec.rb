require 'features_helper'

RSpec.describe 'Returns a number' do
  it 'displays a number on the page' do
    visit '/d6'

    within '#roll' do
      expect(page).to have_css('.roll', count: 1)
    end
  end
end
