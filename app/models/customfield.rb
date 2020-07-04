class Customfield < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{uuid title field_type required applicable_to}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |customfield|
        csv << attributes.map{ |attr| customfield.send(attr) }
      end
    end
  end
end
