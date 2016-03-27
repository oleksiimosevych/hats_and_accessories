class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#щоби змінна Пейджес була весь час під рукою
  before_filter :nav_menu
  def nav_menu
  	@products = Product.all
  	@genders = Gender.all
  	@goods_groups = GoodsGroup.all
  end
end
