feature 'user signup' do
  scenario 'homepage has signup form' do
    visit('/')
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Email')
  end
end
