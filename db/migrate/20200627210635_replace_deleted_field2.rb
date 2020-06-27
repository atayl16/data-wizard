class ReplaceDeletedField2 < ActiveRecord::Migration[5.2]
  def change
    add_column :salonservices, :deleted, :boolean
  end
end
