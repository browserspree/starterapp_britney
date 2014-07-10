class AddInStockToBooks < ActiveRecord::Migration
  def change
    add_column :books, :in_stock, :boolean
  end
end
