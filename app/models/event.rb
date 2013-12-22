class Event < ActiveRecord::Base
  attr_accessible :ticket_name, :ticket_validation, :due_date, :ticket_price, :ticket_quantity, :address, :category, :date, :description, :organiser_details, :time, :title, :venue, :avatar
  has_attached_file :avatar
  has_many :tickets
end
