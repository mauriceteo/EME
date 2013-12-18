class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :address
      t.date :date
      t.time :time
      t.string :category
      t.text :description
      t.text :organiser_details

      t.timestamps
    end
  end
end
