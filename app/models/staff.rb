class Staff < ApplicationRecord
  has_many :locations
  has_many :services
  has_many :salonservices

  def self.to_csv
    attributes = %w{employee_id name title email username location_id deleted}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |staff|
        csv << attributes.map{ |attr| staff.send(attr) }
      end
    end
  end
end
