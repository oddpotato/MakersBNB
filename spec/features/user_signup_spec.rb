feature 'user signup' do
  scenario 'homepage has signup form' do
    visit('/')
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Email')
  end
  
  scenario 'User cant sign up with email already in database' do
    visit('/')
    fill_in('name', with: 'Mendel Durie')
    fill_in('email', with:'mdurie0@drupal.org')
    fill_in('password', with: 'dQIRIF')
    click_button('Submit')
    expect(page).to have_content('Email already in use')
  end
end
