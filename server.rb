require 'sinatra'
require 'foreman'
set :bind, '0.0.0.0' #Vagrant fix

get '/' do
  "Hey, this is a web app"
end


