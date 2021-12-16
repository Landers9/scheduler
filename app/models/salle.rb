class Salle < ApplicationRecord

  validates :name, presence: true

  has_many :plannings, dependent: :destroy
  
end
