class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.boolean :created
      t.boolean :shipped
      t.integer :amount
      t.integer :stamps
      t.string :revenue
      t.string :customer_name
      t.string :customer_email
      t.boolean :needs_follow_up
      t.string :tracking_number

      t.timestamps
    end
  end
end
