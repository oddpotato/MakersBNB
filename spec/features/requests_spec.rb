feature 'requests page' do
  scenario 'user can see their booking requests' do
    login_abby
    visit('/requests')
    expect(page).to have_content('Hobbit Hole')
  end  
end
