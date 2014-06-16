class DemoUsersController < ApplicationController
	def create
		@demouser = DemoUser.new(post_params)
		if @demouser.save
			flash[:success] = "Thanks for you message, we will be in touch with your shortly"
			contact = root_url + "#contact"
			redirect_to contact
		else
			flash[:success] = "well shit"
			contact = root_url + "#contact"
			redirect_to contact
		end
	end

	private
		def post_params
			params.require(:demo_user).permit(:name, :email, :ph_num, :message)
		end
end
