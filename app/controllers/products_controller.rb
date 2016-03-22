class ProductsController < ApplicationController
	before_action :find_product, only: [:edit, :update, :show, :destroy, :upvote]
	before_action :authenticate_user!, except: [:show]

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
	
	 def browse_products
	 	@products = Product.all.search_products(params[:search]).paginate(:per_page => 12, :page => params[:page])
	  end
	
	def index
		@products = Product.all
	end
	
	def edit
	end
	
	def update
		if @product.update_attributes(product_params)
			redirect_to root_url
		else
			render 'edit'
		end
	end
	
	def show
		@comments = @product.comments
	end
	
	def destroy
	end
	
	def upvote
		@product.upvote_from current_user
		redirect_to request.referrer
	end
	
	def find_product
		@product = Product.find(params[:id])
	end
	
	
	def product_params
		params.require(:product).permit(:title, :description, :link, :product_type, :image)
	end

end
