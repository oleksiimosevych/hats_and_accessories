class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#щоби змінна Пейджес була весь час під рукою
  before_filter :nav_menu
  def nav_menu
  	#@products = Product.all
  	@products = Product.paginate(page: params[:page], per_page: 12) #беремо всі записи з бази	
  	@genders = Gender.all
  	@goods_groups = GoodsGroup.all
  end

  def add_to_cart
    @cart.add(product, product.price, quantity)
  end
  def rm_from_cart
    @cart.remove(product, quantity)
  end

  def authenticate
      authenticate_or_request_with_http_basic do |username, password|
      username == "mosevich@mail.ua" && password == "kk3801108ad"
    end
  end

end
