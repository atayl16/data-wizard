class Inventorystock < ApplicationRecord
  def self.to_csv
    attributes = %w{sku_id location_id quantity price cost vendor expiration_date stock_type deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/inventory_stocks.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |inventorystock|
        csv << attributes.map{ |attr| inventorystock.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |inventorystock|
        csv << attributes.map{ |attr| inventorystock.send(attr) }
      end
    end
  end
end
