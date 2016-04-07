module StaticPagesHelper

	def popular_page_redirector
		if current_page_is('categories', 'tech') or current_page_is('categories', 'popular_tech')
			link_to("Popular", tech_popular_path)
		elsif current_page_is('categories', 'games') or current_page_is('categories', 'popular_games')
			link_to("Popular", games_popular_path)
		elsif current_page_is('categories', 'books') or current_page_is('categories', 'popular_books')
			link_to("Popular", books_popular_path)
		elsif current_page_is('categories', 'podcasts') or current_page_is('categories', 'popular_podcasts')
			link_to("Popular", podcasts_popular_path)
		elsif current_page_is('static_pages', 'home') or current_page_is('static_pages', 'popular')
			link_to("Popular", popular_path)
		end
	end
	
	def new_page_redirector
		if current_page_is('categories', 'tech') or current_page_is('categories', 'popular_tech')
			link_to("Newest", tech_path)
		elsif current_page_is('categories', 'games') or current_page_is('categories', 'popular_games')
			link_to("Newest", games_path)
		elsif current_page_is('categories', 'books') or current_page_is('categories', 'popular_books')
			link_to("Newest", books_path)
		elsif current_page_is('categories', 'podcasts') or current_page_is('categories', 'popular_podcasts')
			link_to("Newest", podcasts_path)
		else current_page_is('static_pages', 'home') or current_page_is('static_pages', 'popular')
			link_to("Newest", root_path)
		end
	end
	
	def current_page_is(controller_name, action_name)
		current_page?(controller: controller_name, action: action_name)
	end

end
