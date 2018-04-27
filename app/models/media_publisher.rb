class MediaPublisher < ApplicationRecord
  belongs_to :publisher
  belongs_to :target
end
