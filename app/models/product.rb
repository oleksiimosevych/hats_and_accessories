class Product < ActiveRecord::Base
	validates :name, :about, :price,  presence: true
	validates :name, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	has_one :goods_group
	has_one :gender	
	accepts_nested_attributes_for :goods_group
	accepts_nested_attributes_for :gender
	self.per_page = 3
	WillPaginate.per_page = 3
end
