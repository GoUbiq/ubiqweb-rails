require "action_view"

class DemoUser < ActiveRecord::Base
	include ActionView::Helpers::SanitizeHelper

	
	before_save { self.email = email.downcase }
	# From users entering scripts or html tags
	before_save { self.email = strip_tags(self.email) }
	before_save { self.name = strip_tags(self.name) }
	before_save { self.message = strip_tags(self.message) }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
