class ShapeCli::CLI 
  
  def home
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
  end


  def menu 
    puts " ________________________________________________________________________
|                                                                        |
|     Y = Yes, display articles / N = No, thank you                      |
|________________________________________________________________________|"
     input = nil
      input = gets.strip
        case input
        when "Y" 
          puts display_articles
        when "N"  
          puts exit
        when "back"
          puts home
        when "exit"
          puts exit
        else
          puts "
                                SHAPE CLI 
 _________________________________________________________________________
|                                                                         |
|     Y = Yes, display articles / N = No, thank you, let's exit  :        |
|_________________________________________________________________________|"
      end        
    end
    
      
  def display_articles
   puts "
                                Shape CLI  
 _________________________________________________________________________   
| Enter a number from the list of latest popular topics in Lifestyle      |
| below to view more details                                              |
|                                                                         |"   
    @article = ShapeCli::Article.popular
    @article.each.with_index(1) do |a, i|
     puts "| |#{i}|  #{a.name}"
    end
    puts"|_________________________________________________________________________|"
    display_details
   end
 
 def display_details   
    input = nil
      while input != "exit"
      input = gets.strip  
    
      if input.to_i > 0 
      the_article = @article[input.to_i - 1]
      puts "
                                SHAPE CLI 
 _________________________________________________________________________
|                                                                         |
|   #{the_article.name}                           
|   #{the_article.summary}                        
|   #{the_article.url}                            
|   #{the_article.author}                         
|   #{the_article.author}                         
|   #{the_article.date}                           
|_________________________________________________________________________|"
      elsif input == ""
        puts "
 _________________________________________________________________________
|                                                                         |
|  Please, enter a number between 1-5 / Type back to return to home~                |
|_________________________________________________________________________|"
      elsif input == "exit"
        exit
      else
        home
      end 
     end
    end
    
  def exit
    puts "
 _________________________________________________________________________
|                                                                         |
|  Exiting.. Thank you for using Shape CLI! Have a nice day~              |
|_________________________________________________________________________|"

 end 
end
