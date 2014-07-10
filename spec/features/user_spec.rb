require 'feature_helper'

feature 'Home page' do
  before { sign_in_user }

  scenario 'viewing schedule', driver: :selenium do
    pause
    expect(page).to have_content('Football Schedules')
    expect(page).to have_content('Foo vs Bar')
  end
end
