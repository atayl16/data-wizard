class ReplaceDeletedField < ActiveRecord::Migration[5.2]
  def change
    remove_column :salonservices, :deleted
  end
end
