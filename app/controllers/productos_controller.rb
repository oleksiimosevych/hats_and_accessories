class ProductosController < ApplicationController
	before_filter :find_product, only: [:show]
	def index
		@product = Product.all #беремо всі записи з бази
	end
	def find_product
	  @product= Product.find(params[:id])
	end
end
