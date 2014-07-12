class TopBooksPortlet < Cms::Portlet

  description "The top books in this book store."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor true
     
  def render
    @books = StoreBookstoreBritney::Book.published
  end
    
end