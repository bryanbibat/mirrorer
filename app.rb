require 'sinatra/base'
require 'json'

class Mirrorer < Sinatra::Base

  get '/' do
    'Hello world!'
  end

  post '/' do
    body = request.body.read
    if body.length > 1
      puts JSON.parse(request.body.read).inspect
    end
    'Hello world!'
  end

  run! if app_file == $0
end
