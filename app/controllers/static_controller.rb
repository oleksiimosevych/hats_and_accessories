class StaticController < ApplicationController #Ми створили нові ЕКШЕНИ!!! для статичних сторінок
  def index
    #what is wrong here? must display the best of week goods!
    @static=Product.where("the_best_of_week =true")
    @static = @static.paginate(page: params[:page], per_page: 6)
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
