class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |g|
	g.string :gender_name, null: false, default: ''
 
      g.timestamps null: false
    end
  end
end
