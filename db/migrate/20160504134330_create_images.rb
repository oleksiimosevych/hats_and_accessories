class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :content_id
      t.string :file
      t.timestamp
    end
  end
end
