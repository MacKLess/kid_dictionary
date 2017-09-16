require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("#submit_word", {:type => :feature}) do
  it("will add words to a dictionary list") do
    visit('/')
    fill_in('new_entry', :with => 'mordant')
    click_button('Add!')
    expect(page).to have_content("mordant")
  end

  describe('#clickable_links', {:type => :feature}) do
    it("will link to a new page when clicked on by user") do
      visit('/')
      click_link("mordant")
      expect(page).to have_content("mordant")
    end
  end

  describe('#submit_definition', {:type => :feature}) do
    it("will add definitions to a dictionary entry") do
      visit('/detail/mordant')
      fill_in('new_definition', :with => 'a guy with big teeth')
      click_button('Add!')
      expect(page).to have_content('a guy with big teeth')
    end
  end


end
