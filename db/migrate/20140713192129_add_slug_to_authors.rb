class AddSlugToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :slug, :string
  end
end
