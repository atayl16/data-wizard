class Batchmanifest < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{filename filetype}
    CSV.open("#{Rails.root}/app/assets/csvs/batchmanifest.csv", "wb", headers: true) do |csv|
      all.each do |batchmanifest|
        csv << attributes.map{ |attr| batchmanifest.send(attr) }
      end
    end
    CSV.generate(headers: true) do |csv|
      all.each do |batchmanifest|
        csv << attributes.map{ |attr| batchmanifest.send(attr) }
      end
    end
  end
end
