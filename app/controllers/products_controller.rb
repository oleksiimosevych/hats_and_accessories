class ProductsController < ApplicationController
	#not-static pages:
	#до виконання коду екшинів зробити:
	before_filter :find_product, only: [:edit, :update, :show, :destroy]
	#for creating new pages
	def new
		@product = Product.new
	end
	#to save new page
	def create
		@product= Product.new(product_params)

		if @product.save
          redirect_to products_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	#to watch all the pages
	def index
		@product = Product.all #беремо всі записи з бази
	end
	#to edit перенесли в файндпейдж
	#і вона тепер буде виконуватися
	def edit		
	end
	#to update a page
	def update
      #@page уже буде видно. бо той код 
      #before_filter зробив це для нас)
      if @product.update(product_params)
      	redirect_to products_path 
      else
      	render :edit
      end
	end
	#to delete a post
	def destroy
		if @product.destroy
			redirect_to products_path
		else
			redirect_to products_path, error: 'Не вдалося знищити запис...'
		end
	end    
	def find_product
      #рубі знає що куди підставляти
	  #але ми розказуємо йому що робити тут
	  @product= Product.find(params[:id])
	end
	#here is the action show to show one of pages
    def show    	
    end
    
  private #тільки для цього контроллера  
    def product_params# ми довіряємо таким полям, що в дужках
      params[:product].permit(:name, :about, :price, :group_name_id, :gender_id, :the_best_of_week)
    end
end
