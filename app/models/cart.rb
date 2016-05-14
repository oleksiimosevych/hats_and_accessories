class Cart < ActiveRecord::Base
  has_many :cart_item2s 
  has_many :products, :through => :cart_item2s
  
  def total_price
    cart_item2s.to_a.sum(&:full_price)
  end 
end
