class Saloncategory < ApplicationRecord
  has_many :salonservice

  def self.to_csv
    attributes = %w{category_id name online deleted}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |saloncategory|
        csv << attributes.map{ |attr| saloncategory.send(attr) }
      end
    end
  end
end