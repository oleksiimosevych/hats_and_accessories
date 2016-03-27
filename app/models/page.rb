class Page < ActiveRecord::Base
	validates :name, :about, :price, presence: true  
end
