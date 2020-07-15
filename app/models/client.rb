class Client < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  self.primary_key = 'client_id'

  def self.my_import(file)
    clients = []
    CSV.foreach(file.path, headers: true) do |row|
      clients << Client.new(row.to_h)
    end
    Client.import clients, recursive: true
  end

  def self.to_csv
    attributes = %w{client_id	client_first_name	client_last_name	email	mobile_phone	home_phone	work_phone	street_address	street_address_2	city	state	zip	country	gender	date_of_birth	contact_preference	client_since	can_receive_automated_emails	can_receive_manual_emails	can_receive_automated_sms	can_receive_manual_sms	notes	preferred_employee_id	preferred_location_id	deleted associated_location_ids}
    CSV.open("#{Rails.root}/app/assets/csvs/clients.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |client|
        csv << attributes.map{ |attr| client.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |client|
        csv << attributes.map{ |attr| client.send(attr) }
      end
    end
  end

  def self.to_csv_pets
    attributes = %w{child_id client_id deleted pet_name}
    CSV.open("#{Rails.root}/app/assets/csvs/pets.csv", "wb", headers: true) do |csv|
      csv << attributes

      all.each do |pet|
        csv << attributes.map{ |attr| pet.send(attr) }
      end
    end

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |pet|
        csv << attributes.map{ |attr| pet.send(attr) }
      end
    end
  end

  def run
    self.truncate!
      self.connection.execute(
        "TRUNCATE TABLE #{ self.table_name };"
      )
      self.connection.reset_pk_sequence!(self.table_name)
    end
end
