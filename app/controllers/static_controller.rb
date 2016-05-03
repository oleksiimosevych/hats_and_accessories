class StaticController < ApplicationController #Ми створили нові ЕКШЕНИ!!! для статичних сторінок
  def index
    #what is wrong here? must display the best of week goods!
    @products=Product.paginate(page: params[:page], per_page: 12).search(params[:search])
    #@cart = CartItem.create
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
