require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader'
require 'erubis'

set :environment, :production

get '/xhtml' do
  content_type 'application/xhtml+xml'
  erb :index_xhtml
end

get '/html5' do
  content_type 'text/html'
  erb :index_html5
end
