feature "landingpage" do
  scenario "users comes to MakersBNB website" do
  visit('/')
  expect(page).to have_content "Book a space"

end


end