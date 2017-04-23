require 'sinatra/base'
require 'pinterest-api'
require 'erb'

require "pinsearch/version"

module Pinsearch
	class Pinsearch::Web < Sinatra::Base
		configure do
			set :static, true
			set :static_cache_control, [:public, :max_age => 900]
			set :public_folder, File.dirname(__FILE__) + '/../static'
      set :server, :puma
      set :port, ENV['port'] || 3000
		end

		use Rack::Auth::Basic, "Pinsearch" do |username, password|
			username == ENV['PINSEARCH_AUTH_USER'] and password == ENV['PINSEARCH_AUTH_PASSWORD']
		end

		get '/' do
			redirect '/index.html', 301
		end

		get '/search' do
			@query = params['query']
			if @query
				@client = Pinterest::Client.new(ENV['PINTEREST_API_TOKEN'])
				@results = @client.get_pins(query: @query)
				expires @results.data.size > 0 ? 300 : 60, :public
				erb :searchresults
			else
				expires 15, :public
				erb :invalidquery
			end
		end
	end
end
