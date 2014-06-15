module ApplicationHelper

	# Returns the full title based on pages
	def full_title(page_title)
		base_title = "Ubiq"
		if page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end
end
