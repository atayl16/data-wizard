class Petcategory < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  has_many :petservice

  def self.to_csv
    attributes = %w{category_id name online deleted}
    CSV.open("#{Rails.root}/app/assets/csvs/pet_categories.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |petcategory|
        csv << attributes.map{ |attr| petcategory.send(attr) }
      end
    end
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |petcategory|
        csv << attributes.map{ |attr| petcategory.send(attr) }
      end
    end
  end
end
