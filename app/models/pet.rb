class Pet < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  belongs_to :client
  
  def self.to_csv
    attributes = %w{child_id client_id deleted pet_name}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |pet|
        csv << attributes.map{ |attr| pet.send(attr) }
      end
    end
  end
end
