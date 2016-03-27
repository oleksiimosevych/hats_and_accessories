#rails g migration AddNameColumnToGoodsGroups name:string створило цей файл правильно саме! лишилося рейкою його)
class AddNameColumnToGoodsGroups < ActiveRecord::Migration
  def change
    add_column :goods_groups, :name, :string
  end
end
