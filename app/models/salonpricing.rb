class Salonpricing < ApplicationRecord
  def self.to_csv
    attributes = %w{service_id location_id employee_id price deleted}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |salonpricing|
        csv << attributes.map{ |attr| salonpricing.send(attr) }
      end
    end
  end
end
