class Image < ActiveRecord::Base
  #attr_accessible :product_id, :file
  belongs_to :product
  mount_uploader :file, ImageUploader
end
