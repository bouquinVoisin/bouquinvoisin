class Book < ApplicationRecord
	has_many :users, :through => :reviews
	has_many :reviews, dependent: :destroy

	validates :title, :author, :category, presence: true
end
