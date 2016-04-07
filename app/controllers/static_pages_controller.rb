class StaticPagesController < ApplicationController

	def home
		@products = Product.all.order("created_at DESC")
	end
	
	def popular
		@products = Product.all.order(:cached_votes_up => :desc)
	end


end
