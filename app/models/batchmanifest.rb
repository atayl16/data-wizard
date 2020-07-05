class Batchmanifest < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{filename filetype}

    CSV.generate(headers: true) do |csv|
      # csv << attributes

      all.each do |batchmanifest|
        csv << attributes.map{ |attr| batchmanifest.send(attr) }
      end
    end
  end
end
