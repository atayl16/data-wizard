class Client < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.my_import(file)
    clients = []
    CSV.foreach(file.path, headers: true) do |row|
      clients << Client.new(row.to_h)
    end
    Client.import clients, recursive: true
  end

  def self.to_csv
    attributes = %w{client_id	client_first_name	client_last_name	email	mobile_phone	home_phone	work_phone	street_address_1	street_address_2	city	state	zip	country	gender	date_of_birth	contact_preference	client_since	can_receive_automated_emails	can_receive_manual_emails	can_receive_automated_sms	can_receive_manual_sms	can_receive_manual_emails	can_receive_manual_sms	notes	preferred_employee_id	preferred_location_id	deleted}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
