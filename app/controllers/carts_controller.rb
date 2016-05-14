class CartsController < ApplicationController
  def show
  	#to show a cart
  	 @cart = current_cart 
  end
end
