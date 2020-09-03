class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :restaurants, dependent: :destroy
  
  VALID_PHONE_REGEX = /\A0\d{9,10}\z/

  validates :name, allow_blank: true, length: { maximum: 20 }
  validates :phone_number,
            format: { with: VALID_PHONE_REGEX },
            length: { in: 10..11 },
            allow_blank: true,
            uniqueness: true
end
