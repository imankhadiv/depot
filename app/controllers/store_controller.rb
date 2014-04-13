class StoreController < ApplicationController
	  include CurrentCart
	  before_action :increment_count, only: [:index] 

  def index
  	@products = Product.order(:title)

  	 # @count = increment_count
  end
end
