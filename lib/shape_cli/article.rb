class ShapeCli::Article
  
attr_accessor :article, :name, :url, :summary, :date, :author, :article_text

  def self.popular
    self.scrape_article
  end

  def self.scrape_article
    article = []
    article << self.scrape_lifestyle
    article << self.scrape_article_attr
    article
  end  
  
  def self.scrape_lifestyle
    site = "https://www.shape.com/lifestyle"
    page = Nokogiri::HTML(open(site)) 
    article = self.new 
    article.name = page.css("div h5 a").text
    article
    end
 
  def self.scrape_article_attr
    article.site = "https://www.shape.com/lifestyle/mind-and-body/5-ways-change-your-life-good"
    article.page = Nokogiri::HTML(open(site))
    article = self.new
    article.name = page.css("h1.headline").text
    article.url = page.css("div.taxonomy-seo-links a").attr("href")
    article.summary = page.css("p.dek").text
    article.author = page.css("span.bold.author-name").text
    article.date = page.css("div.timestamp").text
    article.article_text = page.css("p").text
    article
  end
end