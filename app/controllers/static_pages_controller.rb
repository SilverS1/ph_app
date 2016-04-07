class StaticPagesController < ApplicationController

	def home
		@products = Product.all.order("created_at DESC").paginate(:per_page => 12, :page => params[:page])
	end
	
	def popular
		@products = Product.all.order(:cached_votes_up => :desc).paginate(:per_page => 12, :page => params[:page])
	end


end
