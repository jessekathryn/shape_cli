class ShapeCli::Scraper
  
attr_accessor :article, :name, :url, :summary, :date, :author, :article_text
  
   def self.scrape_lifestyle_page()
    page = Nokogiri::HTML(open("https://www.shape.com/lifestyle"))
    articles = []
    page.css("div.taxonomy-seo-links a").each do |a|
    article_hash = {}
      article_hash[:name] = a.text.strip  
      article_hash[:url] = a.attribute("href").value
      articles << article_hash
      articles
    end 
    articles
  end
  
 
  def self.scrape_article_page(url)
    page = Nokogiri::HTML(open(url))
    article_page = {}
    article_page[:name] = page.css("h1.headline").text
    article_page[:url] = page.css("div.taxonomy-seo-links a").attr("href")
    article_page[:summary] = page.css("p.dek").text.strip
    article_page[:author] = page.css("span.bold.author-name").text.strip
    article_page[:date] = page.css("div.timestamp").text.strip
    aarticle_page[:text] = page.css("p").text.strip
    article_page
  end
end 