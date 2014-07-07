def sign_in_user
  @user = create(:user)
  visit new_user_session_path
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: 'alphabravo'
  click_button 'Sign in'
end
