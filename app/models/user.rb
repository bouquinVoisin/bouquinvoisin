class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :reviews, dependent: :destroy
  has_many :books, :through => :reviews
  has_many :likes
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  validates :name, presence: true, length: { maximum: 50 }
  validates :postal_code, presence: true, length: { maximum: 5 }
  before_save :set_address



  scope :postal_code, -> (postal_code) { where postal_code: postal_code }



def set_address
  self.address = "" if self.address.blank?
end
	def full_address
	 
   address + " " + postal_code + ", France"
	end
  geocoded_by :full_address
   after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }


  mount_uploader :avatar, AvatarUploader


   def likes?(review)
    review.likes.where(user_id: id).any?
  end


def self.new_with_session(params, session)
  super.tap do |user|
    if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
      user.email = data["email"] if user.email.blank?
    end
  end
end

def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    #user.name = auth.info.name   # assuming the user model has a name
    #user.image = auth.info.image # assuming the user model has an image
  end
end



end
