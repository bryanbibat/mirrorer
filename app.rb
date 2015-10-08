require 'sinatra/base'
require 'json'

class Mirrorer < Sinatra::Base

  get '/' do
    'Hello world!'
  end

  post '/' do
    puts "request: #{request['X-GitHub-Event']}"
    body = request.body.read
    puts "body: #{body}"
    #if body.length > 1
      #puts JSON.parse(request.body.read).inspect
    #end
    'Hello world!'
  end

  run! if app_file == $0
end
