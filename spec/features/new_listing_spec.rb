feature 'new listing' do
  context 'logged in' do
    scenario 'user can submit form' do
      visit('/sessions/new')
      fill_in('email', with: 'hferguson2@slate.com')
      fill_in('password', with: '9GwfNyEE')
      click_on('Submit')
      visit('/listings/new')
      fill_in('list_title', with: 'Treehouse')
      fill_in('Description', with: 'Twiggy')
      fill_in('Price', with: '15')
      fill_in('list-date', with: '31-10-2021')
      click_on('Submit')
      expect(page).to have_content('Book a space')
      expect(page).not_to have_content('List a new space')
    end
    # scenario 'users listing shows in all listings' do
    #   visit('/sessions/new')
    #   fill_in('email', with: 'hferguson2@slate.com')
    #   fill_in('password', with: '9GwfNyEE')
    #   click_on('Submit')
    #   visit('/listings/new')
    #   fill_in('Title', with: 'Treehouse')
    #   fill_in('Description', with: 'Twiggy')
    #   fill_in('Price', with: '15')
    #   fill_in('Available from', with: '2021-09-21')
    #   fill_in('Available to', with: '2021-10-31')
    #   click_on('Submit')
    #   visit('/listings')
    #   expect(page).to have_content('Treehouse')
    # end
  end

  context 'not logged in' do
    scenario 'form is disabled' 
  end
end
