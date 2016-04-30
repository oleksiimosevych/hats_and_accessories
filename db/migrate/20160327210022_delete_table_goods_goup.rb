class DeleteTableGoodsGoup < ActiveRecord::Migration
  def change
  	drop_table :good_goups
  end
end
