feature 'requests page' do
  scenario 'user can see their booking requests' do
    login_abby
    visit('/requests')
    expect(page).to have_content('Hobbit Hole')
    expect(page).to have_content('2021-09-21')
  end  

end
