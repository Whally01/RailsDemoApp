# encoding: utf-8
require 'rest-client'
require 'json'
class QuotesController < ApplicationController
	def index
		# =begin=begin=beginresponse = RestClient.get('localhost:3000/rest/quotes')
	 # 	@quotes = JSON.parse(response)=end=end=end
	end
	def json
		response = RestClient.get('localhost:3000/json/quotes')
	 	@quotes = JSON.parse(response)
	 	render "json_quotes"
	end
	def rest
		response = RestClient.get('localhost:3000/rest/quotes')
	 	@quotes = JSON.parse(response)
	 	render "rest_quotes"
	end
	def graphql
		response = RestClient.get('localhost:3000/graphql/quotes')
	 	@quotes = JSON.parse(response)
	 	render "graphql_quotes"
	end
end
