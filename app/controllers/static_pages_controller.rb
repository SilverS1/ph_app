class StaticPagesController < ApplicationController

	def home
		@products = Product.all.order("created_at DESC").paginate(:per_page => 12, :page => params[:page])
		if params[:search].present?
			redirect_to browse_products_url
			@products = Product.all.search_products(params[:search]).paginate(:per_page => 12, :page => params[:page])
		end
	end
	
	

end
