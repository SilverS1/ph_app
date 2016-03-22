class CommentsController < ApplicationController
	before_action :set_product
	before_action :authenticate_user!


	def new
		@comment = @product.comments.new
	end
	
	def create
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		if @comment.save
			redirect_to @product
		else
			render 'new'
		end
	end
	
	def index
		@comments = @product.comments
	end
	
	private
	
	def comment_params
		params.require(:comment).permit(:content)
	end

	def set_product
		@product = Product.find(params[:product_id])
	end

end
