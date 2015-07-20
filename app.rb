require 'bundler'
Bundler.require

require './config.rb'

get '/random' do 
	num_kittens = Kitten.all.size
	Kitten.find(num_kittens - 1).to_json
end


get '/bomb' do
	count = params[:count]
	num_kittens = Kitten.all.size
	kitten_ids = []
	while kitten_ids.length < count do
		rand_num = rand(0..num_kittens - 1)
		kitten_ids.push(rand_num) if !kitten_ids.include?(rand_num)
	end

	kittens = kitten_ids.map do |id|
		Kitten.find(id)
	end
end
