# encoding: utf-8
require 'rest-client'
require 'json'
class QuotesController < ApplicationController
	@@api_url = ENV['STORAGE_URL']
	puts @@api_url
	def index
		# =begin=begin=beginresponse = RestClient.get('localhost:3000/rest/quotes')
	 # 	@quotes = JSON.parse(response)=end=end=end
	end
	def json
		if @@api_url && @@api_url.empty?
			url = @@api_url.concat("/json/quotes")
			response = RestClient.get(url)
		else
			response = RestClient.get('localhost:3000/json/quotes')
		end
	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
	def rest
		if @@api_url && @@api_url.empty?
			url = @@api_url.concat("/rest/quotes")
			response = RestClient.get(url)
		else
			response = RestClient.get('localhost:3000/json/quotes')
		end
	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
	def graphql
		if @@api_url && @@api_url.empty?
			url = @@api_url.concat("/graphql/quotes")
			response = RestClient.get(url)
		else
			response = RestClient.get('localhost:3000/json/quotes')
		end
	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
end
