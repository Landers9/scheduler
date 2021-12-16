class Formation < ApplicationRecord

  validates :libelle, presence: true

  has_many :plannings, dependent: :destroy

  belongs_to :user
end
