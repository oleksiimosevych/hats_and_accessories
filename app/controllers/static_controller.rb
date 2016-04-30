class StaticController < ApplicationController #Ми створили нові ЕКШЕНИ!!! для статичних сторінок
  def index
    #what is wrong here? must display the best of week goods!
    @products=Product.where(the_best_of_week: true).paginate(page: params[:page], per_page: 12)
  end
  def about
  end
  def contacts
  end
  def delivery
  end
  def faq #new methods for other static
  end
  #def review
  #end
end
