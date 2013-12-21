class Event < ActiveRecord::Base
  attr_accessible :address, :category, :date, :description, :organiser_details, :time, :title, :venue, :avatar
  has_attached_file :avatar
  has_many :events
end
