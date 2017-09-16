require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/kid_dictionary')
require('pry')

get('/') do
  erb(:mainpage)
end

post('/') do
  entry = params['new_entry']
  new_word = Word.new(entry)
  new_word.save
  erb(:mainpage)
end

get('/detail/:entry') do
  @current_entry = Word.find(params[:entry]) #"#{params[:entry]}"
  erb(:detail)
end

post('/detail/:entry') do
  @current_entry = Word.find(params[:entry])
  @current_entry.definition.push(params["new_definition"])
  erb(:detail)
end
