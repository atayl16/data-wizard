class Ticket < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{ticket_id location_id client_id status employee_id closed_by_employee_id closed_at}
    CSV.open("#{Rails.root}/app/assets/csvs/tickets.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end
  end

  def self.to_csv_skus
    attributes = %w{ticket_id inventory_sku_id quantity sku_amount_before_discount skuamount}
    headers = %w{ticket_id inventory_sku_id quantity amount_before_discount amount}
    CSV.open("#{Rails.root}/app/assets/csvs/ticketsskuitems.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end
  end

  def self.to_csv_services
    attributes = %w{ticket_id appointment_id service_id quantity service_amount_before_discount serviceamount}
    headers = %w{ticket_id appointment_id service_id quantity amount_before_discount amount}
    CSV.open("#{Rails.root}/app/assets/csvs/ticketsserviceitems.csv", "wb", headers: true, headers: headers) do |csv|
      csv << headers

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end
  end

  def self.to_csv_payments
    attributes = %w{ticket_id payment_item_id payment_type amount}
    headers = %w{ticket_id payment_item_id type amount}
    CSV.open("#{Rails.root}/app/assets/csvs/ticketspaymentitems.csv", "wb", headers: true, headers: headers) do |csv|
      csv << headers

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |ticket|
        csv << attributes.map{ |attr| ticket.send(attr) }
      end
    end
  end



end
