module ApplicationHelper
	# The '' is the default parameter, this allows for the calling of full_title and returns base_title
	def full_title(page_title = '')
    	base_title = "The Suitcase Clinic"
    	if page_title.empty?
      		base_title
    	else
      	page_title + " | " + base_title
    	end
  	end
end
