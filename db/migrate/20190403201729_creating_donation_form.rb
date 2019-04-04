class CreatingDonationForm < ActiveRecord::Migration[5.2]
  def change
    create_table :donation_forms do |t|
      t.string :name_of_sender
      t.string :brid_of_sender
      t.string :brid_of_receiver
      t.string :name_of_receiver
      t.integer :receiver_floor_number
      t.integer :receiver_seat_number
      t.integer :number_of_cakes
      t.string :flavour
      t.string :personal_message
      t.timestamps
    end
  end
end
