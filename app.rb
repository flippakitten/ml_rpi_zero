require 'sinatra'
set :bind, '0.0.0.0'

class HelloWorldApp < Sinatra::Base
  get '/' do
    "Hello, world!"
  end
end
