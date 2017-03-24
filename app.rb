#replace --> require('./lib/project_name')
#replace location_of_param --> get('/location_of_param')
#replace @formID and fetch('formID')
#replace function_name
#To make life easier make formID = location_of_param
#And project_name = function_name

require('sinatra')
require('sinatra/reloader')
require('./lib/project_name')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/location_of_param') do
  @formID = params.fetch('formID').function_name()
  erb(:/location_of_param)
end
