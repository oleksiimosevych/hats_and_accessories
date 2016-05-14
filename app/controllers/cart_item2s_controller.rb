class CartItem2sController < ApplicationController
  def create
#added here cart controller
#it musted be "cart_items" but I have already the same named migration so I`ve called it like this
  	current_cart.cart_item2s.create!(params[:cart_item2])
    flash[:notice] = "Product added to cart"
    session[:last_product_page] = request.env['HTTP_REFERER'] || products_url
    #I don`t know is it true or not but  it was in casts ??
    redirect_to current_cart_url

  end
end
#renamed from cart_items_controller.rb 