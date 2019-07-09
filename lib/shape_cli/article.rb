class ShapeCli::Article
  
attr_accessor :article, :name, :url, :summary, :date, :author, :text

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

  def add_article_attributes(article_page)
    article_page.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.all
    @@all
  end 
end