json.books do 
  json.array(@books) do |book|
  	json.title book.title
  	json.author book.author

  end
	
end