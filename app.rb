require 'sinatra'
require 'eps'
class HelloWorldApp < Sinatra::Base
  get '/' do
    "Hello, world!"
    data = [
      {bedrooms: 1, bathrooms: 1, price: 100000},
      {bedrooms: 2, bathrooms: 1, price: 125000},
      {bedrooms: 2, bathrooms: 2, price: 135000},
      {bedrooms: 3, bathrooms: 2, price: 162000}
    ]
    model = Eps::Model.new(data, target: :price)

    model.summary
  end
end
