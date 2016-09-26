require 'rails_helper'

feature 'home' do
  context 'no surf spots are displayed' do
    scenario 'should display an error' do
      visit '/home'
      expect(page).to have_content 'No surf spots here'
    end
  end
end
