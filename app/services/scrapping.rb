require 'rubygems'
require 'nokogiri' 
require 'open-uri'

class Scrapping
  attr_accessor :page, :email, :tab_email, :tab_name, :name, :address, :tab_address

  def perform_email
    @tab_email = []
	@page = Nokogiri::HTML(open("https://www.parislibrairies.fr/reseaumag.php"))
	@email = @page.css('li.libItem-mail a')
	@email.each do |email|
	 	if email.text != ""
		  @tab_email.push(email.text.to_s) 
	      
	    end
	end
	return @tab_email
  end

  def perform_name
  	@tab_name = []
  	@page = Nokogiri::HTML(open("https://www.parislibrairies.fr/reseaumag.php"))
  	@name = @page.css('h2.libItem-title a')
  	@name.each do |name|
	 	if name.text != ""
		  @tab_name.push(name.text.to_s) 
	      
	    end
	end
	return @tab_name
  end

  def perform_address
  	@tab_address = []
  	@page = Nokogiri::HTML(open("https://www.parislibrairies.fr/reseaumag.php"))
  	@address = @page.css('p.libItem-coordonnees')
  	@address.each do |address|
  		if address.text != ""
		  @tab_address.push(address.text.to_s) 
	      
	    end
  	end
  	return @tab_address
  end


end