class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.integer :membership_id
      t.string :membership_name
      t.string :description
      t.decimal :registration_fee_amount
      t.decimal :cancellation_fee_amount
      t.decimal :price
      t.integer :period_size
      t.string :period_type
      t.string :billing_cycle_type
      t.integer :billing_day
      t.string :payment_type
      t.integer :location_id
      t.integer :benefit_id
      t.string :benefit_type
      t.string :benefit_discount_type
      t.integer :benefit_value
      t.integer :benefit_limit
      t.boolean :eligible_for_all_services
      t.boolean :eligible_for_all_products
      t.string :benefit_name
      t.integer :service_id
      t.integer :product_id

      t.timestamps
    end
  end
end
