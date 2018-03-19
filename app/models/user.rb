class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reviews, dependent: :destroy
  has_many :books, :through => :reviews
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, omniauth_providers: [:facebook]

  geocoded_by :full_address
   after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  validates :name, presence: true, length: { maximum: 50 }
  validates :postal_code, presence: true, length: { maximum: 5 }
   
scope :postal_code, -> (postal_code) { where postal_code: postal_code }

	def full_address
	 address + " " + postal_code + ", France"
	end



end
