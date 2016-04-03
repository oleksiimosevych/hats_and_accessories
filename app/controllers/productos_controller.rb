class ProductosController < ApplicationController
	before_filter :find_product, only: [:show]
	
	def index
		@product = Product.all #беремо всі записи з бази
	end
	def find_product
      #рубі знає що куди підставляти
	  #але ми розказуємо йому що робити тут
	  @product= Product.find(params[:id])
	end
end
