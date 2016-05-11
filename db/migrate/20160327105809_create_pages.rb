class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false, default: ''
      t.text :about, null: false
      t.integer :price, null: false
      t.integer :group_name_id
      t.integer :gender_id
      t.boolean :the_best_of_week
      
      t.timestamps null: false
    end
  end
end
