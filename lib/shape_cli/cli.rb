class ShapeCli::CLI 
  
  def home
    puts "
                        SHAPE.com/lifestyle CLI 
_________________________________________________________________________
Welcome to a quick source for the latest popular topics in Lifestyle 
from SHAPE Magazine's digital issue.
                                                                        
Want tips and info on beauty, fashion, travel, health, sex, love and   
everything else you need to live a fuller and happier life? 
 
Type YES to read articles popular in SHAPE's Lifestyle
_________________________________________________________________________
"

    input = nil
     while input != "exit"
      input = gets.strip
      case input
       when "EXIT" 
         exit
       when "NO"
         exit
       when "YES"
         puts "_________________________________________________________________________
Loading..."
         articles
         menu
      end
    end
  end

  def articles 
   articles_data = ShapeCli::Scraper.scrape_lifestyle_page
    ShapeCli::Article.create_from_collection(articles_data)
      display_articles
  end

  def menu 
    input = nil
     while input != "exit"
      input = gets.strip
      #binding.pry
       if input == "exit"
         exit_cli
       elsif input.to_i <= 0 || input.to_i > @all.count
         puts "Please enter a number between 1-#{@all.count}"
         display_articles
       elsif  input.to_i > 0 && input.to_i <= @all.count
         display_details(input.to_i)
         puts "Complete!...
          
SCROLL UP to read entire article from SHAPE.com/Lifetstyle
_________________________________________________________________________
- EXIT to quit or - BACK to return to article list
"
        else 
          puts "Must pick a number to proceed"
          display_articles
      end        
    end
  end 
      
  def display_articles
    puts "_________________________________________________________________________
Trending on Lifestyle:
                                  "   

      @all = ShapeCli::Article.all
      @all.each.with_index(1) do |a, i|
        puts "|#{i}|  #{a.name}"
      end
    puts"
Enter a number to read the article text and view details
_________________________________________________________________________"
   end
 
 def display_details(input)  

  if input.to_i <= @all.count
     the_article = @all[input.to_i - 1]

  puts "
_________________________________________________________________________

Loading...
_________________________________________________________________________"
    #the_article = ShapeCli::Article.all
   if !the_article.summary
    attributes = ShapeCli::Scraper.scrape_article_page(the_article.url)
    the_article.add_article_attributes(attributes)
   end
puts"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'#{the_article.name}: 
#{the_article.summary}'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -    
#{the_article.author}      
#{the_article.date}  

Text: '#{the_article.text}' 
_________________________________________________________________________" 
     end
   end
   
    
  def exit_cli
    puts "
_________________________________________________________________________
Thank you for using Shape CLI!  Have a nice day~
_________________________________________________________________________"

    exit
  end 
end
