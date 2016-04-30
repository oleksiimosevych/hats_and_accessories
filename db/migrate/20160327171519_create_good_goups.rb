class CreateGoodGoups < ActiveRecord::Migration
  def change
    create_table :good_goups do |t|
      t.timestamps null: false
    end
  end
  def change
  drop_table :good_goups
end
end
