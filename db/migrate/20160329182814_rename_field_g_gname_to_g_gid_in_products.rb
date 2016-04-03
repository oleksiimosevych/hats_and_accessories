class RenameFieldGGnameToGGidInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :group_name_id, :goods_group_id
  end
end
