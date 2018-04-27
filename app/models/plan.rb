class Plan < ApplicationRecord
  #associations
  belongs_to :user
  #validations
 # validates :name, :presence true
end
