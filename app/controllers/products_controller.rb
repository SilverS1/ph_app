class ProductsController < ApplicationController

	def new
		@product = Product.new
	end
	
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to root_url
		else
			render 'new'
		end
	end
	
	def index
		@products = Product.all
	end
	
	def edit
		@product = Product.find(params[:id])
	end
	
	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(product_params)
			redirect_to root_url
		else
			render 'edit'
		end
	end
	
	def show
	end
	
	def destroy
	end
	
	def product_params
		params.require(:product).permit(:title, :description, :link, :product_type, :image)
	end

end
