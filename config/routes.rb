Rails.application.routes.draw do
	# root 'quotes#index'
	resources :quotes
	get 'json' => "quotes#json"
	get 'rest' => "quotes#rest"
	get 'graphql' => "quotes#graphql"
end
