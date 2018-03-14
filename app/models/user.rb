class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reviews, dependent: :destroy
  has_many :books, :through => :reviews

   geocoded_by :full_address
   after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 100 }
   


	def full_address
	 address + ", France"
	end


end
