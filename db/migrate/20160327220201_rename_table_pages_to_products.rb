class RenameTablePagesToProducts < ActiveRecord::Migration
  def change
  	 rename_table :pages, :products
  end
end
