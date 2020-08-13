class StaticController < ApplicationController
  require 'zip'

  def export_salonset
    create_appointments_zip
    create_tickets_zip
    create_inventory_zip
    create_memberships_zip
    file_stream = Zip::OutputStream.write_buffer do |zip|
      @saloncategories = Saloncategory.all
      @salonservices = Salonservice.all
      @clients = Client.all
      @locations = Location.all
      @salonpricings = Salonpricing.all
      @staffs = Staff.order("location_id")
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_simple_salon.csv")
      zip.put_next_entry "categories.csv"; zip << @saloncategories.to_csv_saloncategories
      zip.put_next_entry "clients.csv"; zip << @clients.to_csv_clients
      zip.put_next_entry "employees.csv"; zip << @staffs.to_csv_staff
      zip.put_next_entry "locations.csv"; zip << @locations.to_csv_locations
      zip.put_next_entry "pricings.csv"; zip << @salonpricings.to_csv_pricings
      zip.put_next_entry "services.csv"; zip << @salonservices.to_csv_salonservices
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

  def export_salonsetwclasses
    create_appointments_zip
    create_tickets_zip
    create_inventory_zip
    create_memberships_zip
    create_classes_zip
    file_stream = Zip::OutputStream.write_buffer do |zip|
      @saloncategories = Saloncategory.all
      @salonservices = Salonservice.all
      @clients = Client.all
      @locations = Location.all
      @salonpricings = Salonpricing.all
      @staffs = Staff.order("location_id")
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_salon_w_classes.csv")
      zip.put_next_entry "categories.csv"; zip << @saloncategories.to_csv_saloncategories
      zip.put_next_entry "clients.csv"; zip << @clients.to_csv_clients
      zip.put_next_entry "employees.csv"; zip << @staffs.to_csv_staff
      zip.put_next_entry "locations.csv"; zip << @locations.to_csv_locations
      zip.put_next_entry "pricings.csv"; zip << @salonpricings.to_csv_pricings
      zip.put_next_entry "services.csv"; zip << @salonservices.to_csv_salonservices
      zip.put_next_entry "appointments.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments.zip")
      zip.put_next_entry "inventories.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventories.zip")
      zip.put_next_entry "tickets.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets.zip")
      zip.put_next_entry "classes.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/classes.zip")
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

  def export_petset
    create_appointments_zip
    create_tickets_zip
    create_inventory_zip
    create_memberships_zip
    file_stream = Zip::OutputStream.write_buffer do |zip|
      @petcategories = Petcategory.all
      @petservices = Petservice.all
      @clients = Client.all
      @locations = Location.all
      @salonpricings = Salonpricing.all
      @staffs = Staff.order("location_id")
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_simple_pet2.csv")
      zip.put_next_entry "categories.csv"; zip << @petcategories.to_csv_petcategories
      zip.put_next_entry "clients.csv"; zip << @clients.to_csv_clients
      zip.put_next_entry "pets.csv"; zip << @clients.to_csv_pets
      zip.put_next_entry "employees.csv"; zip << @staffs.to_csv_staff
      zip.put_next_entry "locations.csv"; zip << @locations.to_csv_locations
      zip.put_next_entry "pricings.csv"; zip << @salonpricings.to_csv_pricings
      zip.put_next_entry "services.csv"; zip << @petservices.to_csv_petservices
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

  def export_petsetwclasses
    create_appointments_zip
    create_tickets_zip
    create_inventory_zip
    create_memberships_zip
    create_classes_zip
    file_stream = Zip::OutputStream.write_buffer do |zip|
      @petcategories = Petcategory.all
      @petservices = Petservice.all
      @clients = Client.all
      @locations = Location.all
      @salonpricings = Salonpricing.all
      @staffs = Staff.order("location_id")
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_pet_w_classes.csv")
      zip.put_next_entry "categories.csv"; zip << @petcategories.to_csv_petcategories
      zip.put_next_entry "clients.csv"; zip << @clients.to_csv_clients
      zip.put_next_entry "pets.csv"; zip << @clients.to_csv_pets
      zip.put_next_entry "employees.csv"; zip << @staffs.to_csv_staff
      zip.put_next_entry "locations.csv"; zip << @locations.to_csv_locations
      zip.put_next_entry "pricings.csv"; zip << @salonpricings.to_csv_pricings
      zip.put_next_entry "services.csv"; zip << @petservices.to_csv_petservices
      zip.put_next_entry "appointments.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointments.zip")
      zip.put_next_entry "inventories.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventories.zip")
      zip.put_next_entry "tickets.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets.zip")
      zip.put_next_entry "classes.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/classes.zip")
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
      @clients = Client.all
      @customfields = Customfield.all
      zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_pets.csv")
      zip.put_next_entry "clients.csv"; zip << @clients.to_csv_pets
      zip.put_next_entry "pets.csv"; zip << @clients.to_csv_clients
      zip.put_next_entry "customfields.csv"; zip << @customfields.to_csv_customfields
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
          send_data file_stream.read, filename: "clients_pets.zip"
      end
    end
  end

def create_appointments_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    @appointments = Appointment.order('service_id')
    zip.put_next_entry "appointment_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/appointment_manifest.csv")
    zip.put_next_entry "appointments.csv"; zip << @appointments.to_csv_appointments
    zip.put_next_entry "appointment_services.csv"; zip << @appointments.to_csv_appointmentservices
    zip.put_next_entry "appointment_statuses.csv"; zip << @appointments.to_csv_appointmentstatuses
  end
  file_stream.rewind
  File.open("#{Rails.root}/app/assets/csvs/appointments.zip", 'wb') do |file|
    file.write(file_stream.read)
  end
end

def create_bundles_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    @bundles = Bundle.all
    @bundle_items = BundleItem.all
    @bundle_item_groups = BundleItemGroup.all
    @bundle_item_group_prices = BundleItemGroupPrice.all
    zip.put_next_entry "bundles_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/bundles_manifest.csv")
    zip.put_next_entry "bundles.csv"; zip << @bundles.to_csv_bundles
    zip.put_next_entry "bundle_items.csv"; zip << @bundle_items.to_csv_bundle_items
    zip.put_next_entry "bundle_item_groups.csv"; zip << @bundle_item_groups.to_csv_bundle_item_groups
    zip.put_next_entry "bundle_item_group_prices.csv"; zip << @bundle_item_group_prices.to_csv_bundle_item_group_prices
  end
  file_stream.rewind
  File.open("#{Rails.root}/app/assets/csvs/bundles.zip", 'wb') do |file|
    file.write(file_stream.read)
  end
end

def create_classes_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    @events = Event.all
    @attendees = Attendee.all
    @classcategories = Classcategory.all
    @classsettingattendees = Classsettingattendee.all
    @classsettings = Classsetting.all
    @classsettinglocations = Classsettinglocation.all
    @classsegmenttemplates = Classsegmenttemplate.all
    zip.put_next_entry "classes_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/class_manifest.csv")
    zip.put_next_entry "attendees.csv"; zip << @attendees.to_csv_attendees
    zip.put_next_entry "categories.csv"; zip << @classcategories.to_csv_classcategories
    zip.put_next_entry "classes.csv"; zip << @events.to_csv_events
    zip.put_next_entry "class_settings.csv"; zip << @classsettings.to_csv_classsettings
    zip.put_next_entry "class_setting_attendees.csv"; zip << @classsettingattendees.to_csv_classsettingattendees
    zip.put_next_entry "class_setting_locations.csv"; zip << @classsettinglocations.to_csv_classsettinglocations
    zip.put_next_entry "segment_templates.csv"; zip << @classsegmenttemplates.to_csv_classsegmenttemplates
  end
  file_stream.rewind
  File.open("#{Rails.root}/app/assets/csvs/classes.zip", 'wb') do |file|
    file.write(file_stream.read)
  end
end

def export_classes
  create_classes_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_classes.csv")
    zip.put_next_entry "classes.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/classes.zip")
  end
  file_stream.rewind
  respond_to do |format|
    format.zip do
      send_data file_stream.read, filename: "classes.zip"
    end
  end
end

def export_bundles
  create_bundles_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    zip.put_next_entry "batch_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/batch_manifest_bundles.csv")
    zip.put_next_entry "bundles.zip"; zip << File.binread("#{Rails.root}/app/assets/csvs/bundles.zip")
  end
  file_stream.rewind
  respond_to do |format|
    format.zip do
      send_data file_stream.read, filename: "bundles.zip"
    end
  end
end

def export_appointments
  create_appointments_zip
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

def create_inventory_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    @inventoryproducts = Inventoryproduct.all
    @inventoryskus = Inventorysku.all
    @inventorystocks = Inventorystock.all
    zip.put_next_entry "inventory_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/inventory_manifest.csv")
    zip.put_next_entry "inventory_products.csv"; zip << @inventoryproducts.to_csv_inventoryproduct
    zip.put_next_entry "inventory_skus.csv"; zip << @inventoryskus.to_csv_inventorysku
    zip.put_next_entry "inventory_stocks.csv"; zip << @inventorystocks.to_csv_inventorystock
  end
  file_stream.rewind
  File.open("#{Rails.root}/app/assets/csvs/inventories.zip", 'wb') do |file|
    file.write(file_stream.read)
  end
end

  def export_inventory
    create_inventory_zip
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

def create_tickets_zip
  file_stream = Zip::OutputStream.write_buffer do |zip|
    @appointments = Appointment.order('service_id')
    zip.put_next_entry "tickets_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/tickets_manifest.csv")
    zip.put_next_entry "tickets.csv"; zip << @appointments.to_csv_tickets
    zip.put_next_entry "ticketspaymentitems.csv"; zip << @appointments.to_csv_ticketpayments
    zip.put_next_entry "ticketsserviceitems.csv"; zip << @appointments.to_csv_ticketservices
    zip.put_next_entry "ticketsskuitems.csv"; zip << @appointments.to_csv_ticketskus
    zip.put_next_entry "tips.csv"; zip << @appointments.to_csv_tips
  end
  file_stream.rewind
  File.open("#{Rails.root}/app/assets/csvs/tickets.zip", 'wb') do |file|
    file.write(file_stream.read)
  end
end

  def export_tickets
    create_tickets_zip
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

  def create_memberships_zip
    file_stream = Zip::OutputStream.write_buffer do |zip|
      @memberships = Membership.all
      zip.put_next_entry "membership_manifest.csv"; zip << File.binread("#{Rails.root}/app/assets/csvs/membership_manifest.csv")
      zip.put_next_entry "memberships.csv"; zip << @memberships.to_csv_memberships
      zip.put_next_entry "membership_locations.csv"; zip << @memberships.to_csv_membershiplocations
      zip.put_next_entry "membership_benefits.csv"; zip << @memberships.to_csv_membershipbenefits
      zip.put_next_entry "benefit_services.csv"; zip << @memberships.to_csv_membershipservices
      zip.put_next_entry "benefit_products.csv"; zip << @memberships.to_csv_membershipproducts
    end
    file_stream.rewind
    File.open("#{Rails.root}/app/assets/csvs/memberships.zip", 'wb') do |file|
      file.write(file_stream.read)
    end
  end

  def export_memberships
    create_memberships_zip
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "memberships.zip"
      end
    end
  end
end
