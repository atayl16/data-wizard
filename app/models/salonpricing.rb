class Salonpricing < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{service_id location_id employee_id price deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/pricings.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |salonpricing|
        csv << attributes.map{ |attr| salonpricing.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |salonpricing|
        csv << attributes.map{ |attr| salonpricing.send(attr) }
      end
    end
  end
end
