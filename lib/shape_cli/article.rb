class ShapeCli::Article
  
attr_accessor :article, :name, :url, :summary, :date, :author

  def self.popular
    self.scrape_article
  end
  
  def self.scrape_article
    article = []
    
    
    article
  end  
end
