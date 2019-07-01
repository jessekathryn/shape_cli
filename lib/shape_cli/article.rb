class ShapeCli::Article
  
attr_accessor :article, :name, :url, :summary, :date, :author

  def self.popular
    puts "
                              SHAPE CLI 
 ________________________________________________________________________ 
|                                                                        |
|    Enter a number from the list of latest popular topics in Lifestyle  |
|    below to view more details                                          |
|                                                                        |
|    |1|   5 Ways to Change Your Life -- For Good                        |
|    |2|   What Really Helps Get Rid of Cellulite?                       |  
|    |3|   10 Simple Rules for a Healthy Life                            |   
|    |4|   3 Cool Winter Hairstyles                                      |
|    |5|   7 Mind Tricks for Self-Motivation                             |
|________________________________________________________________________|"
  article_1 = self.new
  article_1.name = "5 Ways to Change Your Life -- For Good"
  article_1.url = "https://www.shape.com/lifestyle"
  article.summary = "Five no-fail strategies to finally stick to your goals"
  article.date = "Updated: March 01, 2019"
  article.author = "By Barbara Brody"
  
  article_2 = self.new
  article_2.name = "What Really Helps Get Rid of Cellulite?"
  article_2.url = "https://www.shape.com/lifestyle"
  article_2.summary = "Let's clear this up: Cellulite is natural and normal. But what is happening inside the skin and why? Here, everything you need to know."
  article_2.date = "Updated: March 13, 2019"
  article_2.author = "By Stephanie Dolgoff and Jessica Matthews "
  
  article_3 = self.new
  article_3.name = "10 Simple Rules for a Healthy Life"
  article_3.url = "https://www.shape.com/lifestyle"
  article_3.summary = "Your guide to staying healthy, happy, and fit…for life!"
  article_3.date = "Updated: December 16, 2015"
  article_3.author = "By Jené Luciani"
  
  article_4 = self.new
  article_4.name = "3 Cool Winter Hairstyles"
  article_4.url = "https://www.shape.com/lifestyle"
  article_4.summary = "The wintry skies may be drab and dull, but that doesn't mean your hair needs to be lackluster, too. Just in time for the holiday season, we've got three stylish 'dos anyone can pull off created by Marc Harris, founder and lead stylist of Boston's Salon Marc Harris."
  article_4.date = "Updated: January 07, 2016"
  article_4.author = "Shape.com"
  
  article_5 = self.new
  article_5.name = "7 Mind Tricks for Self-Motivation"
  article_5.url = "https://www.shape.com/lifestyle"
  article_5.summary = "Experts reveal their time management skills to show you how to be more productive with your daily to-do's"
  article_5.date = "Updated: December 16, 2015"
  article_5.author = "By Sara Angle"
  
  [article_1, article_2, article_3, article_4, article_5]
  end
end
