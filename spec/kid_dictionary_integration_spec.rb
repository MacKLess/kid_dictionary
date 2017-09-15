require('capybara/rspec')
require('./app')
Capybara.app = Sinatra:application
set(:show_exceptions, false)

describe('#clickable_links', {:type => :feature}) do
  it("will link to a new page when clicked on by user") do
    expect(Word.entry("mordant"))
  end
end
