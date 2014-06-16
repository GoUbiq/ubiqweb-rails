Ubiq::Application.routes.draw do
	resources :demo_users,			only: :create
	
	root 'index#home'

	# All other pages should be of the form
	# match 'PAGE',		to: 'directory#page',		via: 'get/post'
end
