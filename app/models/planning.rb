class Planning < ApplicationRecord

  belongs_to :salle

  belongs_to :user

  belongs_to :formation

  belongs_to :material

end
