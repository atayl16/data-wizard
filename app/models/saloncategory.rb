class Saloncategory < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{category_id name online deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/salon_categories.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |saloncategory|
        csv << attributes.map{ |attr| saloncategory.send(attr) }
      end
    end
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |saloncategory|
        csv << attributes.map{ |attr| saloncategory.send(attr) }
      end
    end
  end
end
