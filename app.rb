require 'sinatra/base'
require 'json'

class Mirrorer < Sinatra::Base

  get '/' do
    puts JSON.parse(request.body.read).inspect
    'Hello world!'
  end

  run! if app_file == $0
end
