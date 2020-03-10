class CreatePaymentAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_addresses do |t|
      t.integer :account_id
      t.string :address

      t.timestamps
    end
  end
end
