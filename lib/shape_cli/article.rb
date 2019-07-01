class ShapeCli::Article
  
  def self.all 
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
  
  article_2 = self.new
  article_2.name = "What Really Helps Get Rid of Cellulite?"
  article_2.url = "https://www.shape.com/lifestyle"
  
  article_3 = self.new
  article_3.name = "10 Simple Rules for a Healthy Life"
  article_3.url = "https://www.shape.com/lifestyle"
  
  article_4 = self.new
  article_4.name = "3 Cool Winter Hairstyles"
  article_4.url = "https://www.shape.com/lifestyle"
  
  article_5 = self.new
  article_5.name = "7 Mind Tricks for Self-Motivation"
  article_5.url = "https://www.shape.com/lifestyle"
  end
end
