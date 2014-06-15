Ubiq::Application.routes.draw do
	root 'index#home'

	# All other pages should be of the form
	# match 'PAGE',		to: 'directory#page',		via: 'get/post'
end
