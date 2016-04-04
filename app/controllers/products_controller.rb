class ProductsController < ApplicationController
	before_filter :find_product, only: [:edit, :update, :show, :destroy] #do before actions
	def new #for creating new pages
		@product = Product.new
		@goods_groups = GoodsGroup.all
		@genders = Gender.all
		#@product.build_goods_group.name 
	end
	def create #to save new page
		@product= Product.new(product_params)
		if @product.save
          redirect_to products_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	def index #to watch all the products
		@products = Product.paginate(page: params[:page], per_page: 6) #беремо всі записи з бази
		#@posts = Product.paginate(:page => params[:page], :per_page => 30)
		#@posts = Product.order('created_at DESC').page(params[:page])
	end
	def edit		
	end
	def update
      if @product.update(product_params)
      	redirect_to products_path 
      else
      	render :edit
      end
	end
	def destroy #to delete a post
		if @product.destroy
			redirect_to products_path
		else
			redirect_to products_path, error: 'Не вдалося знищити запис...'
		end
	end    
	def find_product
	  @product= Product.find(params[:id])
	end
	#here is the action show to show one of pages
    def show    	
    end    
  private #тільки для цього контроллера  
    def product_params# ми довіряємо таким полям, що в дужках
      params[:product].permit(:name, :about, :price, :group_name_id, :gender_id, :the_best_of_week, :goods_group_id)
    end
end
