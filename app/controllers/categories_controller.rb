class CategoriesController < ApplicationController

	def tech
 		@products = Product.all.where(product_type: Hash[*Product::TECH.flatten].values)
	end
	
	def popular_tech
		@products = Product.all.order(:cached_votes_up => :desc).where(product_type: Hash[*Product::TECH.flatten].values)
	end
	
	def games
		@products = Product.all.where(product_type: Hash[*Product::GAMES.flatten].values)
	end
	
	def popular_games
		@products = Product.all.order(:cached_votes_up => :desc).where(product_type: Hash[*Product::GAMES.flatten].values)
	end
	
	def books
		@products = Product.all.where(product_type: Hash[*Product::BOOKS.flatten].values)
	end
	
	def popular_books
		@products = Product.all.order(:cached_votes_up => :desc).where(product_type: Hash[*Product::BOOKS.flatten].values)
	end
	
	def podcasts
		@products = Product.all.where(product_type: Hash[*Product::PODCASTS.flatten].values)
	end
	
	def popular_podcasts
		@products = Product.all.order(:cached_votes_up => :desc).where(product_type: Hash[*Product::PODCASTS.flatten].values)
	end


end
