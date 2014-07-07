require 'feature_helper'

feature 'User' do
  before {

    sign_in_user
    puts @user.email
     }

  context 'show page' do
    scenario 'view schedule' do
      visit '/'
      expect(page).to have_content('Football Schedules')
      expect(page).to have_content('Foo vs Bar')
    end
  end
end
