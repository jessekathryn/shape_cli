class ShapeCli::Article
  
attr_accessor :article, :name, :url, :summary, :date, :author

  def self.popular
    self.scrape_article
  end
  
  def self.scrape_article
    article = []
    
    article << self.scrape_lifestyle
    
    article
  end  
  
  def self.scrape_lifestyle
    site = "https://www.shape.com/lifestyle"
    page = Nokogiri::HTML(open(site))
    binding.pry
    name = page.css("div.taxonomy-seo-links a").text 
    url = page.css("div.taxonomy-seo-links a").attr("href").value
    puts name.text
  end
  
    def self.scrape_article_attr
    site = "https://www.shape.com/lifestyle/mind-and-body/5-ways-change-your-life-good"
    page = Nokogiri::HTML(open(site))
    binding.pry
    name = page.css("h1.headline").text
    url = page.css("div.taxonomy-seo-links a").attr("href")
    summary = page.css("p.dek").text
    author = page.css("span.bold.author-name").text
    date = page.css("div.timestamp").text
    article = page.css("p").text
    puts name.text
  end
end
