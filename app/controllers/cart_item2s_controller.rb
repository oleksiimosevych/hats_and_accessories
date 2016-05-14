class CartItem2sController < ApplicationController
  def create
  	current_cart.cart_item2s.create!(params[:cart_item2])
    flash[:notice] = "Product added to cart"
    session[:last_product_page] = request.env['HTTP_REFERER'] || products_url
    redirect_to current_cart_url

  end
end
#renamed from cart_items_controller.rb 