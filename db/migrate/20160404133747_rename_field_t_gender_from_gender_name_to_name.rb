class RenameFieldTGenderFromGenderNameToName < ActiveRecord::Migration
  def change
  	    rename_column :genders, :gender_name, :name
  end
end
