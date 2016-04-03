class GoodsGroup < ActiveRecord::Base
	#oh. it was very interesting) to create a normal table) NEVER USE Goodsgroup cause it can make you crazy))
	  validates :name,  presence: true
	  validates :name, uniqueness: true
end
