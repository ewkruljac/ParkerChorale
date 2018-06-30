class Audio < ApplicationRecord
  belongs_to :event

  validates_presence_of :title
end
