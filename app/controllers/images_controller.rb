class ImagesController < ApplicationController
  def new #for creating new pages
		@image = Image.new
  end
  def create #to make &save new page
    @image = Image.new(image_params)
    if @image.save
    redirect_to images_path
    else
      render :new #simple form will light it as errors)
    end
  end
  

  def image_params# ми довіряємо таким полям, що в дужках
    params[:image].permit(:content_id, :file)
  end
  
  def edit		
  end

end
