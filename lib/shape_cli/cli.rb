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
    exit
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
    @articles = ShapeCli::Articles.all
  end
  
  def menu 
    puts "
                                SHAPE CLI 
 _________________________________________________________________________
|                                                                         |
|     Enter Y/N  :                                                        |
|_________________________________________________________________________|"
     input = nil
      while input != "exit" && input != "N"
        input = gets.strip
        case input
        when "Y" 
          puts display_articles
        when "N" 
          puts exit
        else
          puts "
                                SHAPE CLI 
 _________________________________________________________________________
|                                                                         |
|     Y = yes, display articles / N = no, thank you / exit  :             |
|_________________________________________________________________________|"
      end
    end
  end
  
  def exit
    puts "
 _________________________________________________________________________
|                                                                         |
|  You will now exit! Thank you for using Shape CLI! Have a nice day~     |
|_________________________________________________________________________|"
    end 
end
