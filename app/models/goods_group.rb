class GoodsGroup < ActiveRecord::Base
	#oh. it was very interesting) to create a normal table) NEVER USE Goodsgroup cause it can make you crazy))
	  validates :goods_group_name,  presence: true  
end
