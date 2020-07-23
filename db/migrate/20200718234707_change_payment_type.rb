class ChangePaymentType < ActiveRecord::Migration[5.2]
  def change
    rename_column :tickets, :type, :payment_type
  end
end
