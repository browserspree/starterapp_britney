class CreateAuthorsCmsCategoriesJoinTable < ActiveRecord::Migration
  def change
    create_table :authors_cms_categories, id: false do |t|
      t.integer :author_id
      t.integer :category_id
    end
  end
end
