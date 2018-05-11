class Publisher < ApplicationRecord
  #Associations
  belongs_to :type
  has_many :media_publishers
  #Validations
end
