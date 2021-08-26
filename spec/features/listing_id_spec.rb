feature 'displays a single listing' do

    scenario 'user can see detailed view of listing' do
      visit('/listings')
      click_button('1')
      expect(page).to have_content('Hobbit Hole')
    end
  
    scenario 'user can make a request to book' do
      visit('/listings')
      click_button('1')
      click_button('Request booking') #request booking page
      expect(page).to have_content('Hobbit Hole')
    end
  end 