class ShapeCli::CLI 
  
  def home
    puts "
                               SHAPE CLI 
________________________________________________________________________
                                                                        
 Shape CLI is a quick source for the latest popular topics in Lifestyle.
                                                                        
 Want tips and info on beauty, fashion, travel, health, sex, love and   
 everything else you need to live a fuller and happier life?" 
    menu
  end


  def menu 
    puts "________________________________________________________________________
                                                                        
             Y = Yes, display articles / N = No, thank you                      
________________________________________________________________________"
     input = nil
     while input != "exit"
      input = gets.strip
        case input
        when "Y" 
          puts display_articles
        when "N"  
          exit
        when "back"
          puts home
        when "exit"
          exit
        else
          puts "
                               SHAPE CLI 
_________________________________________________________________________
                                                                         
     Y = Yes, display articles / N = No, thank you, let's exit  :        
_________________________________________________________________________"
      end        
    end
  end 
      
  def display_articles
    puts "
                               Shape CLI  
 ________________________________________________________________________   
 
 Enter a number to view popular topic details :                                             
                                                                          "   
      articles_data = ShapeCli::Scraper.scrape_lifestyle_page
      ShapeCli::Article.create_from_collection(articles_data)
      @all = ShapeCli::Article.all
      @all.each.with_index(1) do |a, i|
        puts "|#{i}|  #{a.name}"
      end
    puts"_______________________________________________________________________"
    display_details
   end
 
 def display_details  
    ShapeCli::Article.all.each do |a|
    attributes = ShapeCli::Scraper.scrape_article_page(a.url)
    a.add_article_attributes(attributes)
  end
  
    input = nil
      while input != "exit"
      input = gets.strip  
    
      if input.to_i > 0 
      the_article = @all[input.to_i - 1]
      puts "
                                SHAPE CLI 
_________________________________________________________________________
   
       #{the_article.name} 
    
       #{the_article.summary}
    
       #{the_article.url}                            
       #{the_article.author}      
       #{the_article.date}   
       
       #{the_article.text}  
_________________________________________________________________________
                                                                        
  All set? Enter back to return home or exit~        
_________________________________________________________________________" 
     
      elsif input == ""
        puts "
_________________________________________________________________________
                                                                     
Enter back to return home and exit to leave~        
_________________________________________________________________________" 
      elsif input == "exit" || input == "N"
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
