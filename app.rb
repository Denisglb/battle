require 'sinatra'

class Battle < Sinatra::Base
	$boxer1 = nil
	$boxer2 = nil

	get '/' do
		erb(:index)
	end

	post '/names' do
		$boxer1 = Player.new(params[:boxer1])
		$boxer2 = Player.new(params[:boxer2])
		redirect to'/play'
	end

	get '/play' do
		erb(:play)
	end

	get '/attack' do
		erb(:attack)
	end
	
	# start the server if ruby file executed directly
	run! if app_file == $0
end

class Player
	attr_reader :name, :hp
	def initialize(name, hp=100)
		@name = name
		@hp = hp
	end
end
