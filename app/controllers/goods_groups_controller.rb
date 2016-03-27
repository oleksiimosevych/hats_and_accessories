class GoodsGroupsController < ApplicationController
  #not-static pages:
	#до виконання коду екшинів зробити:
	before_filter :find_goods_group, only: [:edit, :update, :destroy]
	#for creating new pages
	def new
		@goods_group = GoodsGroup.new
	end
	#to save new page
	def create
		@goods_group = GoodsGroup.new(goods_group_params)

		if @goods_group.save
          redirect_to goods_groups_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	#to watch all the pages
	def index
		@goods_group = GoodsGroup.all #беремо всі записи з бази
	end
	#to edit перенесли в файндпейдж
	#і вона тепер буде виконуватися
	def edit		
	end
	#to update a page
	def update
      #@page уже буде видно. бо той код 
      #before_filter зробив це для нас)
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
	def find_goodsgroup
      #рубі знає що куди підставляти
	  #але ми розказуємо йому що робити тут
	  @goods_group = GoodsGroup.find(params[:id])
	end
  private #тільки для цього контроллера  
    def goods_group_params# ми довіряємо таким полям, що в дужках
      params[:goods_group].permit(:name)
    end
end