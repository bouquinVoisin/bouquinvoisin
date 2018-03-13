class AddColumnsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :book_title, :string
    add_column :reviews, :book_author, :string
    add_column :reviews, :book_category, :string
    add_column :reviews, :book_cover, :string
  end
end
