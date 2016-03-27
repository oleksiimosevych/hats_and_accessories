class CreateGoodsGroups < ActiveRecord::Migration
  def change
    create_table :goods_groups do |t|

      t.timestamps null: false
    end
  end
end
