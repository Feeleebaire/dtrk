class Plan < ApplicationRecord
  #associations
  belongs_to :user
  has_many :plan_ads
  #validations
 # validates :name, :presence true
end
