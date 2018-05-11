class PlanAd < ApplicationRecord
  belongs_to :media_publisher
  belongs_to :plan
end
