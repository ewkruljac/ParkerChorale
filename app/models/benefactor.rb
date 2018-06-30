class Benefactor < ApplicationRecord
  validates_presence_of :name, :image_caption
end
