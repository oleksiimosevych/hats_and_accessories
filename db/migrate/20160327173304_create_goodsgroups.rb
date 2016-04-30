class CreateGoodsgroups < ActiveRecord::Migration
  def change
    create_table :goodsgroups do |g|
   	#id is beeing created as default)
   	g.string :goods_group_name, null: false, default: ''
 
      g.timestamps null: false
    end
  end
end
