class Ticket < ActiveRecord::Base
  belongs_to :event
  attr_accessible :due_date, :ticket_name, :ticket_price, :ticket_quantity, :ticket_validation
end
