class Inventorysku < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{sku_id product_id name number barcode target_quantity alert_threshold deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/inventory_skus.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |inventorysku|
        csv << attributes.map{ |attr| inventorysku.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |inventorysku|
        csv << attributes.map{ |attr| inventorysku.send(attr) }
      end
    end
  end
end
