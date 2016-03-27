class Gender < ActiveRecord::Base
  validates :gender_name, presence: true  
end
