require 'spec_helper'

describe "Indices" do

	before { visit root_path }

	describe "Home page" do
		it "should have the content 'Ubiq'" do			
			expect(page).to have_content('Ubiq')
		end

		it "shoudl have the title 'Ubiq'" do			
			expect(page).to have_title('Ubiq - Wireless Presentations')
		end
	end
end
