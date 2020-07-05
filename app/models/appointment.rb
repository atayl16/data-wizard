class Appointment < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{appointment_id location_id employee_id client_id child_id notes start_time end_time}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end
  def self.to_csv_services
    attributes = %w{appointment_id service_id price duration}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end
  def self.to_csv_statuses
    attributes = %w{appointment_id status change_time employee_id }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end
end
