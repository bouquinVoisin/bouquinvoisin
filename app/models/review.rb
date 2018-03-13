class Review < ApplicationRecord
  belongs_to :user
  #belongs_to :book

  validates :body, presence: true
  validates :book_title, presence: true
  validates :book_author, presence: true
  validates :book_category, presence: true

end
