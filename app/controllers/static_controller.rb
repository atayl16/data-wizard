class StaticController < ApplicationController
  require 'zip'

  def index
  end

  def export_salon
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_simple_salon.csv")
      zip.put_next_entry "categories.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/salon_categories.csv")
      zip.put_next_entry "clients.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/clients.csv")
      zip.put_next_entry "employees.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/employees.csv")
      zip.put_next_entry "locations.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/locations.csv")
      zip.put_next_entry "pricings.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/pricings.csv")
      zip.put_next_entry "services.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/salon_services.csv")
      zip.put_next_entry "appointments.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments.zip")
      zip.put_next_entry "inventories.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventories.zip")
      zip.put_next_entry "tickets.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets.zip")
      zip.put_next_entry "addonmappings.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/addonmappings.csv")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "salon_set.zip"
      end
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/salon_set.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
  end

  def export_pet
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_simple_pet2.csv")
      zip.put_next_entry "categories.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/pet_categories.csv")
      zip.put_next_entry "clients.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/clients.csv")
      zip.put_next_entry "pets.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/pets.csv")
      zip.put_next_entry "employees.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/employees.csv")
      zip.put_next_entry "locations.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/locations.csv")
      zip.put_next_entry "pricings.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/pricings.csv")
      zip.put_next_entry "services.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/pet_services.csv")
      zip.put_next_entry "appointments.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments.zip")
      zip.put_next_entry "inventories.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventories.zip")
      zip.put_next_entry "tickets.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets.zip")
      zip.put_next_entry "addonmappings.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/addonmappings.csv")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "pet_set.zip"
      end
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/pet_set.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
  end

  def export_clients_and_pets
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_pets.csv")
      zip.put_next_entry "clients.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/clients_only.csv")
      zip.put_next_entry "pets.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/pets.csv")
      zip.put_next_entry "customfields.csv"; zip << File.binread("app/assets/csvs/customfields.csv")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
          send_data file_stream.read, filename: "clients_pets.zip"
      end
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/clients_pets.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
  end

  def export_appointments
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "appointment_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointment_manifest.csv")
      zip.put_next_entry "appointments.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments.csv")
      zip.put_next_entry "appointment_services.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments_services.csv")
      zip.put_next_entry "appointment_statuses.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments_statuses.csv")
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/appointments.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_apptset.csv")
      zip.put_next_entry "appointments.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments.zip")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "appointments.zip"
      end
    end
  end

  def export_inventory
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "inventory_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventory_manifest.csv")
      zip.put_next_entry "inventory_skus.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventory_skus.csv")
      zip.put_next_entry "inventory_products.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventory_products.csv")
      zip.put_next_entry "inventory_stocks.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventory_stocks.csv")
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/inventories.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_inventory.csv")
      zip.put_next_entry "inventories.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventories.zip")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "inventories.zip"
      end
    end
  end

  def export_tickets
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "tickets_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets_manifest.csv")
      zip.put_next_entry "tickets.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets.csv")
      zip.put_next_entry "ticketspaymentitems.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/ticketspaymentitems.csv")
      zip.put_next_entry "ticketsserviceitems.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/ticketsserviceitems.csv")
      zip.put_next_entry "ticketsskuitems.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/ticketsskuitems.csv")
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/tickets.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_tickets.csv")
      zip.put_next_entry "tickets.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets.zip")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "tickets.zip"
      end
    end
  end

  def export_memberships
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "membership_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/membership_manifest.csv")
      zip.put_next_entry "memberships.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/memberships.csv")
      zip.put_next_entry "membership_locations.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/membership_locations.csv")
      zip.put_next_entry "membership_benefits.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/membership_benefits.csv")
      zip.put_next_entry "benefit_services.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/benefit_services.csv")
      zip.put_next_entry "benefit_products.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/benefit_products.csv")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "memberships.zip"
      end
    end
    file_stream.rewind
      File.open("#{Rails.root}/app/assets/csvs/memberships.zip", 'wb') do |file|
        file.write(file_stream.read)
    end
  end
end
