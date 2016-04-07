module StaticPagesHelper

	def popular_page_redirector
		if current_page?(controller: 'categories', action: 'tech')
			link_to("Popular", tech_popular_path, html_options = {class: "product-nav-popular"})
		elsif current_page?(controller: 'categories', action: 'games')
			link_to("Popular", games_popular_path, html_options = {class: "product-nav-popular"})
		elsif current_page?(controller: 'categories', action: 'books')
			link_to("Popular", books_popular_path, html_options = {class: "product-nav-popular"})
		elsif current_page?(controller: 'categories', action: 'podcasts')
			link_to("Popular", podcasts_popular_path, html_options = {class: "product-nav-popular"})
		else
			link_to("Popular", popular_path, html_options = {class: "product-nav-popular"})
		end
	end
	
	def new_page_redirector
		if current_page?(controller: 'categories', action: 'tech')
			link_to("Newest", tech_path, html_options = {class: "product-nav-newest"})
		elsif current_page?(controller: 'categories', action: 'games')
			link_to("Newest", games_path, html_options = {class: "product-nav-newest"})
		elsif current_page?(controller: 'categories', action: 'books')
			link_to("Newest", books_path, html_options = {class: "product-nav-newest"})
		elsif current_page?(controller: 'categories', action: 'podcasts')
			link_to("Newest", podcasts_path, html_options = {class: "product-nav-newest"})
		else
			link_to("Newest", root_path, html_options = {class: "product-nav-newest"})
		end
	end
	

end
