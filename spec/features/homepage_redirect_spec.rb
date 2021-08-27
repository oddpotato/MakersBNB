feature 'homepage redirect' do
  scenario 'if user is logged in, homepage is requests' do
    visit('/sessions/new')
    fill_in('email', with: 'dballin3@telegraph.co.uk')
    fill_in('password', with: '0sjQhG2DvXgk')
    click_on('Submit')
    visit('/')
    expect(page).to have_content('requests')
  end
end
