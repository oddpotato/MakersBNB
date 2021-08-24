feature 'login' do
  scenario 'displays a login form' do
    visit('/sessions/new')
    expect(page).to have_content('Email Address')
    expect(page).to have_content('Password')
    expect(page).to have_button('Submit')
  end
end