class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :lastname, :firstname, :encrypted_password, :telephone, presence: true

  has_many :plannings, dependent: :destroy

  has_many :formations, dependent: :destroy

end
