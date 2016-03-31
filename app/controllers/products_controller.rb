class ProductsController < ApplicationController
	before_action :find_product, only: [:edit, :update, :show, :upvote, :destroy]
	before_action :authenticate_user!, except: [:show]
	before_action :authorised_user, only: [:edit, :update, :destroy]

	def new
		@product = current_user.products.new
	end
	
	def create
		@product = current_user.products.new(product_params)
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
		@comment = Comment.new
	end
	
	def destroy
		@product.destroy
		redirect_to root_url
	end
	
	def upvote
		if current_user.voted_up_on? @product
			@product.downvote_from current_user
			redirect_to request.referrer
		else
			@product.upvote_from current_user
			redirect_to request.referrer
		end
	end
	
	def downvote
				
	end
	
	def authorised_user
		redirect_to @product if @product.user_id != current_user.id
	end
	
	def find_product
		@product = Product.find(params[:id])
	end
	
	def product_params
		params.require(:product).permit(:title, :description, :link, :product_type, :image)
	end

end
