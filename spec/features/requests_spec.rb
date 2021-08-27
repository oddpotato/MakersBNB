feature 'requests page' do
  scenario 'user can see their booking requests' do
    login_abby
    visit('/requests')
    expect(page).to have_content('Hobbit Hole')
    expect(page).to have_content('2021-12-26')
    expect(page).to have_content('true')
   
  end  

  scenario 'user can see requests on their listings' do
    login_abby
    visit('/requests')
    expect(page).to have_content('Downing Street')
    expect(page).to have_content('2021-09-21')
    expect(page).to have_content('null')
  
  end  

end
