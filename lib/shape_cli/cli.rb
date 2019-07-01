class ShapeCli::CLI 
  
  def call
    puts "
                                  SHAPE CLI 
    ________________________________________________________________________
   |                                                                        |
   | Shape CLI is a quick source for the latest popular topics in Lifestyle.|
   |                                                                        |
   | Want tips and info on beauty, fashion, travel, health, sex, love and   |
   | everything else you need to live a fuller and happier life?            |
   |                                                                        |
   |________________________________________________________________________|" 
   menu
   display_articles
  end
  
  def display_articles
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
  end
  
  def menu 
    puts "
                                  SHAPE CLI 
    _________________________________________________________________________
   |                                                                         |
   |     Enter Y/N  :                                                        |
   | ________________________________________________________________________|"
 end
end