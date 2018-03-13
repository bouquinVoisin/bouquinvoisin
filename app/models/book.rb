class Book < ApplicationRecord
	has_many :users, :through => :reviews
	has_many :reviews

	validates :title, :author, :category, presence: true
end
