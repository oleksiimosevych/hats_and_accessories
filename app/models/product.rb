class Product < ActiveRecord::Base
	validates :name, :about, :price, :avaible, :wholesale, :the_best_of_week, :goods_group_id, :gender_id, presence: true
	validates :name, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	has_one :goods_group
	has_one :gender	
	accepts_nested_attributes_for :goods_group
	accepts_nested_attributes_for :gender
	#self.per_page = 6
	#WillPaginate.per_page = 6
	#attr_accessible :image
	mount_uploader :image, ImageUploader
#search in producTS
	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			all
		end
	end
end
