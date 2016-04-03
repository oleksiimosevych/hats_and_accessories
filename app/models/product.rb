class Product < ActiveRecord::Base
	validates :name, :about, :price,  presence: true
	validates :name, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	has_one :goods_group
	has_one :gender	
end
