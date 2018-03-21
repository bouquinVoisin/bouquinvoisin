class Review < ApplicationRecord
  belongs_to :user
  has_many :likes
  #belongs_to :book

  validates :body, presence: true
  validates :book_title, presence: true
  validates :book_author, presence: true
  validates :book_category, presence: true
  
  scope :book_category, -> (book_category) { where book_category: book_category }
  scope :recent, -> { order("created_at") }
  scope :oldest, -> { order(created_at: :desc) }
  scope :best, -> { order(numberlikes: :desc) }



end
