class CreateStoreBookstoreBritneyBooks < ActiveRecord::Migration
  def change
    create_content_table :books do |t|
      t.string :name
      t.integer :price
      t.text :description, :size => (64.kilobytes + 1)

      t.timestamps
    end
  end
end
