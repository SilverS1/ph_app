class CategoriesController < ApplicationController

	def tech
 		@products = Product.all.where(product_type: Hash[*Product::TECH.flatten].values).paginate(:per_page => 12, :page => params[:page])
	end
	
	def popular_tech
		@products = Product.all.order(:cached_votes_up => :desc).where(product_type: Hash[*Product::TECH.flatten].values).paginate(:per_page => 12, :page => params[:page])
	end
	
	def games
		@products = Product.all.where(product_type: Hash[*Product::GAMES.flatten].values).paginate(:per_page => 12, :page => params[:page])
	end
	
	def popular_games
		@products = Product.all.where(product_type: Hash[*Product::GAMES.flatten].values).order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end
	
	def books
		@products = Product.all.where(product_type: Hash[*Product::BOOKS.flatten].values).paginate(:per_page => 12, :page => params[:page])
	end
	
	def popular_books
		@products = Product.all.where(product_type: Hash[*Product::BOOKS.flatten].values).order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end
	
	def podcasts
		@products = Product.all.where(product_type: Hash[*Product::PODCASTS.flatten].values).paginate(:per_page => 12, :page => params[:page])
	end
	
	def popular_podcasts
		@products = Product.all.where(product_type: Hash[*Product::PODCASTS.flatten].values).order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end


end
