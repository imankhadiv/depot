class StoreController < ApplicationController
	  include CurrentCart
	  before_action :increment_count, only: [:index]
	  before_action :set_cart
	  skip_before_action :authorize


  def index
  	@products = Product.order(:title)

  	 # @count = increment_count
  end
end
