module CurrentCart
	extend ActiveSupport::Concern

	private

	def set_cart
		session[:counter] = nil
		@cart = Cart.find(session[:cart_id])
	rescue  ActiveRecord::RecordNotFound
		@cart = Cart.create
		session[:cart_id] = @cart.id
	end

	def increment_count
		session[:counter] ||= 0
		session[:counter] += 1
	end

		
end