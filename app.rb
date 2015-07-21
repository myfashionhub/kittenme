require 'bundler'
Bundler.require

require './config.rb'
require './models/kitten.rb'
require 'sinatra/json'

get '/' do 
	erb :index
end

get '/random' do 
	num_kittens = Kitten.all.size
	json kitten: Kitten.find(num_kittens - 1).url
end


get '/bomb' do
	count = params[:count].to_i
	num_kittens = Kitten.all.size
	kitten_ids = []
	while kitten_ids.length < count do
		rand_num = rand(1..num_kittens)
		kitten_ids.push(rand_num) if !kitten_ids.include?(rand_num)
	end

	kittens = kitten_ids.map do |id|
		Kitten.find(id)
	end
	json kittens: kittens.map { |kitten| kitten.url }
end
