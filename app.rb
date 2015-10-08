require 'sinatra/base'
require 'json'
require 'fileutils'
require 'open3'

class Mirrorer < Sinatra::Base

  get '/' do
    'Hello world!'
  end

  post '/' do
    if request.env['HTTP_X_GITHUB_EVENT'] == "push"
      req_body = request.body.read
      puts "body: #{req_body}"
      if body.length > 1
        payload = JSON.parse(payload)
        puts payload.inspect
        full_name = payload["repository"]["full_name"]
        unless Dir.exists?(File.join("builds", full_name))
          Open3.popen3("git clone https://github.com/#{full_name}.git builds/#{full_name}")

        end
        if payload["ref"] == "refs/heads/tags"

        else

        end
      end
    end
    'Hello world!'
  end

  run! if app_file == $0
end
