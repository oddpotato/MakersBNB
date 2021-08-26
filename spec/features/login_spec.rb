feature 'login' do
  scenario 'displays a login form' do
    visit('/sessions/new')
    expect(page).to have_content('Email Address')
    expect(page).to have_content('Password')
    expect(page).to have_button('Submit')
  end

  scenario 'logo has navigation' do
    visit('/sessions/new')
    click_on('logo')
    expect(page).to have_content('Sign Up To MakersBNB')
  end

  scenario 'displays message if incorrect login details are used' do
    visit('/sessions/new')
    fill_in('email', with: 'example@example.com')
    fill_in('password', with: 'P@s2word')
    click_on('Submit')
    expect(page).to have_content('Incorrect email or password')
  end
end
