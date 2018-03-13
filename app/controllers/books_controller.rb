class BooksController < ApplicationController

  before_action :force_json, only: :autocomplete

  def index
     @books = Book.ransack(title_cont: params[:q]).result(distinct: true).limit(10)
  end


  def autocomplete
  	 @books = Book.ransack(title_cont: params[:q]).result(distinct: true).limit(10)
   
  end

    def search
  	 @books = Book.ransack(title_cont: params[:q]).result(distinct: true)
   
  end

  private

  def force_json
    request.format = :json
  end
end
