require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count app path', {:type => :feature}) do
  it('processes the user entry and returns the count of word') do
    visit('/')
    fill_in('sentence', :with => 'hi hello hi hi hi hi!')
    click_button('Send')
    expect(page).to have_content(5)
  end
end
