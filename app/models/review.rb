class Review < ApplicationRecord
  belongs_to :user
  has_many :likes


 self.per_page = 10

  validates :body, presence: true
  validates :book_title, presence: true
  validates :book_author, presence: true
  validates :book_category, presence: true
  
  scope :book_category, -> (book_category) { where book_category: book_category }



end
