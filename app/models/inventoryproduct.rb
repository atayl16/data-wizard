class Inventoryproduct < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{product_id name brand category vendor description visible_to_clients commissionable discontinued discontinued_reasons alternative_product_ids deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/inventory_products.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |inventoryproduct|
        csv << attributes.map{ |attr| inventoryproduct.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |inventoryproduct|
        csv << attributes.map{ |attr| inventoryproduct.send(attr) }
      end
    end
  end
end
