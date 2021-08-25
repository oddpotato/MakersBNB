# This is a test to see if index displays the default
# Which is provided as part of this template

feature 'Index page' do
  it "expects the page to say Hello World" do
    visit('/')
    expect(page).to have_content 'Hello People!'
  end
end
  