class ShapeCli::Article
  
attr_accessor :article, :name, :url, :summary, :date, :author, :article_text

  @@all = []

  def initialize(shape_hash)
    shape_hash.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
  end

  def self.create_from_collection(articles_array)
    articles_array.each do |article|
      self.new(article)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.all
    @@all
  end 
  
  #def self.popular
   # self.scrape_article
  #end

  #def self.scrape_article
   # article = []
   # article << self.scrape_lifestyle
   # article << self.scrape_article_attr
   # article
  #end  
end