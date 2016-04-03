class Product < ActiveRecord::Base
	validates :name, :about, :price,  presence: true
	has_one :goods_group
	has_one :gender	
end
