class ShapeCli::CLI 
  
  def home
    puts "
                               SHAPE CLI 
_________________________________________________________________________
 Shape CLI is a quick source for the latest popular topics in Lifestyle.
                                                                        
 Want tips and info on beauty, fashion, travel, health, sex, love and   
 everything else you need to live a fuller and happier life? Chose an 
 article from below:"
    menu
  end


  def menu 
    articles_data = ShapeCli::Scraper.scrape_lifestyle_page
    ShapeCli::Article.create_from_collection(articles_data)
    input = nil
     while input != "exit"
      display_articles
        #puts "
#_____________________________________________________________________
#Enter exit to Exit 
        #"
      input = gets.strip
      
        case input
        when "1", "2", "3"," 4"," 5"
         display_details(input.to_i)
        when "N"  
          exit
        when "exit"
          exit
        else
          puts "
_________________________________________________________________________
Type Menu to return to articles or exit        
_________________________________________________________________________"
      end        
    end
  end 
      
  def display_articles
    puts "
__________________________________________________________________________ 
                                                                          "   
      @all = ShapeCli::Article.all
      @all.each.with_index(1) do |a, i|
        puts "|#{i}|  #{a.name}"
      end
    puts"
Enter the article number to read 
__________________________________________________________________________"
   end
 
 def display_details(input)  
  puts "loading..."
    ShapeCli::Article.all.each do |a|
    attributes = ShapeCli::Scraper.scrape_article_page(a.url)
    a.add_article_attributes(attributes)
  end
  
    if input.to_i > 0 
     the_article = @all[input.to_i - 1]
puts"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
'#{the_article.name}:  #{the_article.summary}'
    
#{the_article.author}      
#{the_article.date}   
Text:  '#{the_article.text}'" 
     end
    end
    
  def exit
    puts "
___________________________________________________________________________
  Exiting.. Thank you for using Shape CLI! Have a nice day~              
___________________________________________________________________________"
 end 
end
