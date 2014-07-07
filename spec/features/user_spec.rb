require 'feature_helper'

feature 'User' do
  before { sign_in_user }

  context 'show page', driver: :selenium do
    scenario 'lists tweets' do
      visit '/'
      expect(page).to have_content('Football Schedules')
      expect(page).to have_content('Foo vs Bar')
    end
  end
end
