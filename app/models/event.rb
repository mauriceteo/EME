class Event < ActiveRecord::Base
  attr_accessible :ticket_name, :ticket_validation, :due_date, :ticket_price, :ticket_quantity, :address, :category, :date, :description, :organiser_details, :time, :title, :venue, :avatar
  has_attached_file :avatar
  has_many :tickets

	attr_writer :current_step

	# :shipping_name, :if => lambda { |o| o.current_step == "shipping" }
#	validates_presence_of :billing_name, :if => lambda { |o| o.current_step == "billing" }

	def current_step
	  @current_step || steps.first
	end

	def steps
	  %w[step1 step2]
	end

	def next_step
	  self.current_step = steps[steps.index(current_step)+1]
	end

	def previous_step
	  self.current_step = steps[steps.index(current_step)-1]
	end

	def first_step?
	  current_step == steps.first
	end

	def last_step?
	  current_step == steps.last
	end

	def all_valid?
	  steps.all? do |step|
	    self.current_step = step
	    valid?
	  end
end
end
