require 'spec_helper'

describe "Indices" do

	describe "Home page" do
		it "should have the content 'Ubiq'" do
			visit '/index/home'
			expect(page).to have_content('Ubiq')
		end

		it "shoudl have the title 'Ubiq'" do
			visit '/index/home'
			expect(page).to have_title('Ubiq - Wireless Presentations')
		end
	end
end
