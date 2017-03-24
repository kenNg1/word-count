#replace --> require('./lib/project_name')
#replace location_of_param --> get('/location_of_param')
#replace @formID and fetch('formID')
#replace function_name
#To make life easier make formID = location_of_param
#And project_name = function_name

require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/grab') do
  @partial = params[:radio_button]
  if @partial=='exact' then
  # @partial = params.fetch('radio_button') --> checked = 3
  @word = params.fetch('word')
  @output = params.fetch('sentence').word_count_exact(@word)
  erb(:sentence)
  else
  # @partial = params.fetch('radio_button') --> unchecked = 4
  @word = params.fetch('word')
  @output = params.fetch('sentence').word_count_partial(@word)
  erb(:sentence)
  end
end
