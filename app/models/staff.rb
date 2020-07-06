class Staff < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  has_many :locations
  has_many :services
  has_many :salonservices

  def self.to_csv
    attributes = %w{employee_id name title email username location_id deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/employees.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |staff|
        csv << attributes.map{ |attr| staff.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |staff|
        csv << attributes.map{ |attr| staff.send(attr) }
      end
    end
  end
end
