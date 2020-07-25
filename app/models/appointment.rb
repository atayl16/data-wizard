class Appointment < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{appointment_id location_id employee_id client_id child_id notes has_specific_employee start_time end_time}
    CSV.open("#{Rails.root}/app/assets/csvs/appointments.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

  def self.to_csv_services
    attributes = %w{appointment_id service_id price duration}
    CSV.open("#{Rails.root}/app/assets/csvs/appointments_services.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

  def self.to_csv_statuses
    attributes = %w{appointment_id status change_time employee_id }
    CSV.open("#{Rails.root}/app/assets/csvs/appointments_statuses.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

  def self.to_csv_tickets
    attributes = %w{ticket_id location_id client_id ticket_status employee_id employee_id start_time}
    headers = %w{ticket_id location_id client_id status employee_id closed_by_employee_id closed_at}
    CSV.open("#{Rails.root}/app/assets/csvs/tickets.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

  def self.to_csv_skus
    attributes = %w{ticket_id inventory_sku_id quantity sku_amount sku_amount}
    headers = %w{ticket_id inventory_sku_id quantity amount_before_discount amount}
    CSV.open("#{Rails.root}/app/assets/csvs/ticketsskuitems.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

  def self.to_csv_ticketservices
    attributes = %w{ticket_id appointment_id service_id quantity price price}
    headers = %w{ticket_id appointment_id service_id quantity amount_before_discount amount}
    CSV.open("#{Rails.root}/app/assets/csvs/ticketsserviceitems.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

  def self.to_csv_payments
    attributes = %w{ticket_id payment_item_id ticket_type amount}
    headers = %w{ticket_id payment_item_id type amount}
    CSV.open("#{Rails.root}/app/assets/csvs/ticketspaymentitems.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |appointment|
        csv << attributes.map{ |attr| appointment.send(attr) }
      end
    end
  end

end
