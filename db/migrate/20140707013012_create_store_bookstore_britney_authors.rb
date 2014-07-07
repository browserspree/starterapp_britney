class CreateStoreBookstoreBritneyAuthors < ActiveRecord::Migration
  def change
    create_content_table :authors do |t|
      t.string :name
      t.text :bio
      

      t.timestamps
    end
  end
end
