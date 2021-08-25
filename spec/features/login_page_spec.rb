feature "access login page from home" do
 scenario "user clicks login link" do
  visit('/')
  click_on('Login')
  expect(page).to have_content 'Login To MakersBNB'
 end

end