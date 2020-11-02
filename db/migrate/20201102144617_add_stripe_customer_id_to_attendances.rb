class AddStripeCustomerIdToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_column :attendance, :stripe_customer_id, :string
  end
end
