require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base

  get '/test' do
    'Test page'
  end

  get '/' do
    'Peeps!'
  end

  get '/peeps' do
    @peeps = [
      "This is a peep!"
    ]
    erb :'peeps/index'
  end

  run! if app_file == $0
end
