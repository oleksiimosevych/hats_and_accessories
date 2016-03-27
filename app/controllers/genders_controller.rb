class GendersController < ApplicationController
	#not-static pages:
	#до виконання коду екшинів зробити:
	before_filter :find_gender, only: [:edit, :update, :destroy]
	#for creating new pages
	def new
		@gender = Gender.new
	end
	#to save new page
	def create
		@gender= Gender.new(gender_params)

		if @gender.save
          redirect_to genders_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	#to watch all the pages
	def index
		@gender = Gender.all #беремо всі записи з бази
	end
	#to edit перенесли в файндпейдж
	#і вона тепер буде виконуватися
	def edit		
	end
	#to update a page
	def update
      #@page уже буде видно. бо той код 
      #before_filter зробив це для нас)
      if @gender.update(gender_params)#?page_params
      	redirect_to genders_path 
      else
      	render :edit
      end
	end
	#to delete a post
	def destroy
		if @gender.destroy
			redirect_to genders_path
		else
			redirect_to genders_path, error: 'Не вдалося знищити запис...'
		end
	end
	def find_gender
      #рубі знає що куди підставляти
	  #але ми розказуємо йому що робити тут
	  @gender= Gender.find(params[:id])
	end
  private #тільки для цього контроллера  
    def gender_params# ми довіряємо таким полям, що в дужках
      params[:gender].permit(:gender_name)
    end
end
