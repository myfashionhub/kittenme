require 'bundler'
Bundler.require

require './config.rb'
require './seeds.rb'

require 'sinatra/json'

get '/' do 
    erb :index
end

data = Kitten.data

get '/random' do
  num_kittens = data.size
  json kitten: data[rand(0..num_kittens-1)]
end

get '/bomb' do
  count = params[:count].to_i
  num_kittens = data.size

  urls = []
  while urls.size < count
    rand_num = rand(0..num_kittens-1)

    if !urls.include? data[rand_num]
      urls << data[rand_num]
    end
  end

  json kittens: urls
end
