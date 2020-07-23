class Membership < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv
    attributes = %w{membership_id membership_name description registration_fee_amount cancellation_fee_amount price period_size period_type billing_cycle_type billing_day payment_type}
    headers = %w{membership_id name description registration_fee_amount cancellation_fee_amount price period_size period_type billing_cycle_type billing_day payment_type}
    CSV.open("#{Rails.root}/app/assets/csvs/memberships.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end
  end

  def self.to_csv_locations
    attributes = %w{membership_id location_id}
    CSV.open("#{Rails.root}/app/assets/csvs/membership_locations.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end
  end

  def self.to_csv_benefits
    attributes = %w{membership_id benefit_name benefit_id benefit_type benefit_discount_type benefit_value benefit_limit eligible_for_all_services eligible_for_all_products}
    headers = %w{membership_id name benefit_id benefit_type benefit_discount_type benefit_value benefit_limit eligible_for_all_services eligible_for_all_products}
    CSV.open("#{Rails.root}/app/assets/csvs/membership_benefits.csv", "wb", headers: true) do |csv|
      csv << headers

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << headers

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end
  end

  def self.to_csv_services
    attributes = %w{benefit_id service_id}
    CSV.open("#{Rails.root}/app/assets/csvs/benefit_services.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end
  end

  def self.to_csv_products
    attributes = %w{benefit_id product_id}
    CSV.open("#{Rails.root}/app/assets/csvs/benefit_products.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |membership|
        csv << attributes.map{ |attr| membership.send(attr) }
      end
    end
  end
end
