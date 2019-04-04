class AddingEmailToDonationForms < ActiveRecord::Migration[5.2]
  def change
    add_column :donation_forms, :email_of_sender, :string
    add_column :donation_forms, :email_of_receiver, :string
  end
end
