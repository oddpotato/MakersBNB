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
    expect(page).to have_content('Hello World!')
  end
end