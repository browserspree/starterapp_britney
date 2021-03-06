module StoreBookstoreBritney
  class Book < ActiveRecord::Base
    is_addressable path: "/books"
    has_and_belongs_to_many :authors
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'
    acts_as_content_block
    content_module :books

    validates_presence_of :name

    before_validation :set_slug
  
    def set_slug
      self.slug = name.to_slug unless name.blank?
    end

    def genres
      genres = Array.new
      categories.each do |c|
         genres << c if c.category_type.name=="Genres" 
      end
      genres
    end
  end
end
