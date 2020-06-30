class Location < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  self.primary_key = 'location_id'
  has_many :staff

  def self.to_csv
    attributes = %w{location_id	nickname country street_address street_address_2 city state zip phone_number deleted}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |location|
        csv << attributes.map{ |attr| location.send(attr) }
      end
    end
  end
end
