class Publisher < ApplicationRecord
  belongs_to :type
  has_many :media_publishers
end
