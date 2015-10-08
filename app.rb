require 'sinatra/base'

class Mirrorer < Sinatra::Base

  get '/' do
    puts "hello world"
    'Hello world!'
  end

  run! if app_file == $0
end
