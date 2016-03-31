class StaticPagesController < ApplicationController

	def home
		@products = Product.all.order("created_at DESC").paginate(:per_page => 12, :page => params[:page])
		root_search
	end
	
	def popular
		@products = Product.all.order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
		root_search
	end
	
	def tech
		@products = Product.all.where('product_type LIKE ?', "%#{'WEB'}%").paginate(:per_page => 12, :page => params[:page])
		# @products = Product.all.search_genres("WEB").paginate(:per_page => 12, :page => params[:page])
	end
	
	def games
		@products = Product.all.order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end
	
	def books
		@products = Product.all.order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end
	
	def podcasts
		@products = Product.all.order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end
	
	
	def root_search
		if params[:search].present?
			redirect_to browse_products_url
			@products = Product.all.search_products(params[:search]).paginate(:per_page => 12, :page => params[:page])
		end
	end
	


end
