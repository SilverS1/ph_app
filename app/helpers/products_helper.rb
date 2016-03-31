module ProductsHelper

	def owned?(product)
		current_user.id == product.user_id
	end

end
