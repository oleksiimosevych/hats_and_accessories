class Gender < ActiveRecord::Base
  validates :gender_name, presence: true
  validates :gender_name, uniqueness: true
  belongs_to :product
end
