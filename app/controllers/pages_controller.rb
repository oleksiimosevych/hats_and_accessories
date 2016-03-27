class PagesController < ApplicationController
	#not-static pages:
	#до виконання коду екшинів зробити:
	before_filter :find_page, only: [:edit, :update, :show, :destroy]
	#for creating new pages
	def new
		@page = Page.new
	end
	#to save new page
	def create
		@page= Page.new(page_params)

		if @page.save
          redirect_to pages_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	#to watch all the pages
	def index
		@pages = Page.all #беремо всі записи з бази
	end
	#to edit перенесли в файндпейдж
	#і вона тепер буде виконуватися
	def edit		
	end
	#to update a page
	def update
      #@page уже буде видно. бо той код 
      #before_filter зробив це для нас)
      if @page.update(page_params)
      	redirect_to pages_path 
      else
      	render :edit
      end
	end
	#to delete a post
	def destroy
		if @page.destroy
			redirect_to pages_path
		else
			redirect_to pages_path, error: 'Не вдалося знищити запис...'
		end
	end
	def find_page
      #рубі знає що куди підставляти
	  #але ми розказуємо йому що робити тут
	  @page= Page.find(params[:id])
	end
	#here is the action show to show one of pages
    def show
    	
    end
  private #тільки для цього контроллера  
    def page_params# ми довіряємо таким полям, що в дужках
      params[:page].permit(:name, :about, :price, :group_name_id, :gender_id, :the_best_of_week)
    end
end
