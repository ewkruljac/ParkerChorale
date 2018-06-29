class AboutPageItem < ApplicationRecord
  validates_presence_of :name, :bio, :role
end
