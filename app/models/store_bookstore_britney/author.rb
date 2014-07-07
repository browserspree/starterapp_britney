module StoreBookstoreBritney
  class Author < ActiveRecord::Base
    has_and_belongs_to_many :books
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'
    acts_as_content_block
    content_module :authors
    has_attachment :headshot
  end
end
