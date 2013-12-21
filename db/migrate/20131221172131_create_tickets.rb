class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticket_name
      t.decimal :ticket_price
      t.integer :ticket_quantity
      t.date :due_date
      t.boolean :ticket_validation
      t.references :event

      t.timestamps
    end
    add_index :tickets, :event_id
  end
end
