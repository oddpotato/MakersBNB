feature 'access login page from home' do
  scenario 'user clicks login link' do
    visit '/'
    click_on('Login')
    expect(page).to have_content 'Login To MakersBNB'
  end

  scenario 'user can navigate to sign up' do
    visit '/sessions/new'
    click_on('Sign Up')
    expect(page).to have_content('Sign Up To MakersBNB')
  end
end
