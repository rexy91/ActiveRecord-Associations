class CreateTickets < ActiveRecord::Migration[5.2]
  def change
      create_table :flights do |t|
          t.string :destination
          t.string :name_of_flight
      end 
  end
end
