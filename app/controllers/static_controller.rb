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
      zip.put_next_entry "appointment_services.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointment_services.csv")
      zip.put_next_entry "appointment_statuses.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointment_statuses.csv")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "appointments.zip"
      end
    end
    file_stream.rewind
      File.open("#{Rails.root}/app/assets/csvs/appointments.zip", 'wb') do |file|
        file.write(file_stream.read)
    end
  end
end
