require "google_drive"
require "gmail"
require_relative "scrapping"

class SendEmail
	attr_accessor :array_name, :array_address, :array_email

	def initialize
		@array_email = Scrapping.new.perform_email
		@array_name = Scrapping.new.perform_name
		@array_address = Scrapping.new.perform_address
	end

	def perform
		go_through_all_the_lines
	end

	# Créer un spreadsheet et le remplir avec un hash connu (un nom en colonne A, un mail en colonne B)

	def create_a_spreadsheet_and_fill_it_with_a_tab
		session = GoogleDrive::Session.from_config("config.json")
		spreadsheet = session.create_spreadsheet(title = "Libraires")
	  	ws = spreadsheet.worksheets[0]

		i = 1
		j = 1
		k = 1

		@array_name.each do |name|
			ws[i,1] = name
			i += 1
		end

		@array_email.each do |email|
			ws[j,2] = email
			j += 1
		end

		@array_address.each do |address|
			ws[k,3] = address
			k += 1
		end

		ws.save 
		#eturn ws
	end

	# Envoyer un mail au "mail" en colonne B du spreasheet, correspondant au "first_name" en colonne A

	def send_email_to_line(mail)

		gmail = Gmail.connect("#", "#")
		gmail.deliver do

			to mail
			subject "Invitation pour My League Project"
			html_part do
	    		content_type "text/html; charset=UTF-8"
	    		body "Bonjour, 
				<br/>
				Je m'appelle Sébastien, je lance un projet qui permet de tracer ses performances sportives au travers d'une application mobile. </br>
				Voici le lien du projet : https://myleagueproject.herokuapp.com/, inscrivez-vous pour être tenu au courant. <br/>

				Je vous souhaite une bonne journée ! <br/>
				Sébastien"
	   		end
		end
	end

	# Appliquer la méthode send_email_to_line à chaque ligne du spreadsheet créé par la première méthode

	def go_through_all_the_lines

		ws = create_a_spreadsheet_and_fill_it_with_a_tab

		(1..ws.num_rows).each do |row|

			mail = ws[row, 1]

			send_email_to_line(mail)
		end
	end
end

