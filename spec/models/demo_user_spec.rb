require 'spec_helper'

describe DemoUser do
	before {
		@demoer = DemoUser.new(name: "Demo", email: "demo@ubiq.com", ph_num: 5195195195, message: "This is a test")
	}

	subject { @demoer }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:ph_num) }
	it { should respond_to(:message) }

	it { should be_valid }

	describe "when name is not present" do
		before { @demoer.name = " " }
		it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @demoer.email = " " }
		it { should_not be_valid }
	end

	describe "when name is too long" do
		before { @demoer.name = "U" * 51 }
		it { should_not be_valid }
	end
	describe "when email format is invalid" do
		it "should be invalid" do
			addresses = %w[demoer@foo,com demoer_at_foo.org example.demoer@foo.
			             foo@bar_baz.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@demoer.email = invalid_address
				expect(@demoer).not_to be_valid
			end
		end
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[demoer@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@demoer.email = valid_address
				expect(@demoer).to be_valid
			end
		end
	end
end
