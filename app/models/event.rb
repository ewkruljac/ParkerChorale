class Event < ApplicationRecord
  validates_presence_of :title, :start_date, :end_date, :ticket_url
end
