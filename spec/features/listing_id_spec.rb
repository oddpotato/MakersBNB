feature 'displays a single listing' do

    scenario 'user can see detailed view of listing' do
      visit('/listings')
      click_button('1')
      expect(page).to have_content('hobbithole')
    end
  
    # scenario 'user can make a request to book' do
    #   visit('/')
    # end
  end 