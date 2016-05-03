class GendersController < ApplicationController
	#not-static pages:#до виконання коду екшинів зробити:
	before_action :find_gender, only: [:edit, :update, :destroy]
	before_action :authenticate, only: [:index, :edit, :update, :destroy]
	
	 #before_action :zzz, :only => [:index]
	def new #for creating new pages
		@gender = Gender.new
	end
	def create #to save new page
		@gender= Gender.new(gender_params)
		if @gender.save
          redirect_to genders_path
      else
      	render :new #simple form will light it as errors)
		end
	end
	def index #to watch all the pages
		@gender = Gender.all #беремо всі записи з бази
	end
	def edit #find_gender will do it
	end
	def update #to update a page
      #@page уже буде видно. бо той код 
      #before_filter зробив це для нас)
      if @gender.update(gender_params)#?page_params
      	redirect_to genders_path 
      else
      	render :edit
      end
	end
	def destroy #to delete a post
		if @gender.destroy
			redirect_to genders_path
		else
			redirect_to genders_path, error: 'Не вдалося знищити запис...'
		end
	end
	def find_gender
      @gender= Gender.find(params[:id]) #find by ID
	end
  private #тільки для цього контроллера  
    def gender_params# ми довіряємо таким полям, що в дужках
      params[:gender].permit(:name)
    end
end
