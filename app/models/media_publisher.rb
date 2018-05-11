class MediaPublisher < ApplicationRecord
  #Associations
  belongs_to :publisher
  belongs_to :target
  has_many :plan_ads
  #Validations
end
