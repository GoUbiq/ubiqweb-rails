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

	describe "Demo Requests" do
		let(:submit) { "Send" }

		describe "with invalid information" do
			it "should not send message" do
				expect { click_button submit }.not_to change(DemoUser, :count)
			end
		end

		describe "with valid info" do
			before do
				fill_in "Name",			with: "Tester"
				fill_in "Email",		with: "tester@test.com"
				fill_in "Phone Number",	with: 5195195195
				fill_in "Message",		with: "This is a recording"
			end

			it "should send message" do
				expect { click_button submit }.to change(DemoUser, :count).by(1)
			end
		end
	end
end
