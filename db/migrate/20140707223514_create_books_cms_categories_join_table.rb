class CreateBooksCmsCategoriesJoinTable < ActiveRecord::Migration
  def change
    create_table :books_cms_categories, id: false do |t|
      t.integer :book_id
      t.integer :category_id
    end  
  end
end
