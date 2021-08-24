feature 'listings page' do
  scenario ' page has date filter capability' do
    visit('/listings')
    expect(page).to have_css('h1', text: 'Book a space')
    expect(page).to have_field('from')
    expect(page).to have_field('to')
    expect(page).to have_button('Search')
  end

  # scenario 'displays page containing listings'
end