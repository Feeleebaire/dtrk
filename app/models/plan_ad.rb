class PlanAd < ApplicationRecord
  #Associations
  belongs_to :media_publisher
  belongs_to :plan
  #Validations
end
