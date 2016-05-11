class AddPartOptandavaibleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :wholesale, :boolean
    add_column :products, :avaible, :boolean
  end
end
