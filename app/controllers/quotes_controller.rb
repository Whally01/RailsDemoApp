# encoding: utf-8
require 'rest-client'
require 'json'
class QuotesController < ApplicationController
	@@api_url = ENV['STORAGE_URL']
	def index
		# =begin=begin=beginresponse = RestClient.get('localhost:3000/rest/quotes')
	 # 	@quotes = JSON.parse(response)=end=end=end
	end
	def json
		if @@api_url!=null
			response = RestClient.get(@@api_url+'/json/quotes')
		end
		else
			response = RestClient.get('localhost:3000/json/quotes')

	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
	def rest
		if api_url!=null
			response = RestClient.get(api_url+'/json/quotes')
		end
		else
			response = RestClient.get('localhost:3000/json/quotes')
			
	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
	def graphql
		if api_url!=null
			response = RestClient.get(api_url+'/json/quotes')
		end
		else
			response = RestClient.get('localhost:3000/json/quotes')
			
	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
end
