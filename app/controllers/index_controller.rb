class IndexController < ApplicationController
	def home
		@demouser = DemoUser.new
	end
end
