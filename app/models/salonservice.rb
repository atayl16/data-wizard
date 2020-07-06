class Salonservice < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  self.primary_key = 'service_id'

  def self.to_csv
    attributes = %w{service_id category_id name description	duration is_add_on is_custom breed_group_id sku deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/salon_services.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |service|
        csv << attributes.map{ |attr| service.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |service|
        csv << attributes.map{ |attr| service.send(attr) }
      end
    end
  end
end
