class GoodsGroupsController < ApplicationController
	#до виконання коду екшинів зробити:
require 'will_paginate/array' 
	before_filter :find_goods_group, only: [:edit, :update, :show, :destroy]
	def new #for creating new pages
		@goods_group = GoodsGroup.new
	end
	def create #to make &save new page
		@goods_group = GoodsGroup.new(goods_group_params)
		if @goods_group.save
          redirect_to goods_groups_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	def index #to watch all the gg
		@goods_group = GoodsGroup.all #беремо всі записи з бази		
		@products = Product.paginate(page: params[:page], per_page: 6) #беремо всі записи з бази
	end
	def show
		#по однійц картинці Product.where("goods_group_id =?", params[:id])
		#@products = @products.paginate(page: params[:page], per_page: 6) #беремо всі записи з бази
	end
	def edit		
	end
	def update
      #variablu @page уже буде видно. бо той код 
      #before_filter from application_controller.rb зробив це для нас)
      if @goods_group.update(goods_group_params)
      	redirect_to goods_groups_path 
      else
      	render :edit
      end
	end
	#to delete a post
	def destroy
		if @goods_group.destroy
			redirect_to goods_groups_path
		else
			redirect_to goods_groups_path, error: 'Не вдалося знищити запис...'
		end
	end
	def find_goods_group
	  @goods_group = GoodsGroup.find(params[:id])
	end
  private #тільки для цього контроллера  
    def goods_group_params# ми довіряємо таким полям, що в дужках
      params[:goods_group].permit(:name)
    end
end