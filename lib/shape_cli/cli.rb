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
    @article = ShapeCli::Article.all
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
|     Y = Yes, display articles / N = No, thank you / exit  :             |
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
