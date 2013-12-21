class AddAttrToEventTable < ActiveRecord::Migration
  def change
  	add_column :events , :ticket_name, :string
  	add_column :events , :ticket_price, :decimal
  	add_column :events , :ticket_quantity, :integer
  	add_column :events , :due_date, :date
  	add_column :events , :ticket_validation, :boolean
  end
end
