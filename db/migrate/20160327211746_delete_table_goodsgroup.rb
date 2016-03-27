class DeleteTableGoodsgroup < ActiveRecord::Migration
  def change
  	drop_table :goodsgroups
  end
end
