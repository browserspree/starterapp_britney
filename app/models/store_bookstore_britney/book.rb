module StoreBookstoreBritney
  class Book < ActiveRecord::Base
    has_and_belongs_to_many :authors
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'
    acts_as_content_block
    content_module :books

    def genres
      genres = Array.new
      categories.each do |c|
         genres << c if c.category_type.name=="Genres" 
      end
      genres
    end
  end
end
