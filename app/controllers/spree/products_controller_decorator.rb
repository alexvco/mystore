Spree::ProductsController.class_eval do
  def latest
    @products = Spree::Product.available.order('available_on DESC').limit(25)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end  
end