class Product < ActiveRecord::Base
	validates :name, :about, :price,  presence: true  
end
