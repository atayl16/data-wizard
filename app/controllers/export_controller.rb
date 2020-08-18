require 'rake'
require 'rake/task'
Rails.application.load_tasks
class ExportController < ActionController::Base

  def appointments
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_appointments, filename: 'appointments.csv'
  end

  def appointmentservices
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_appointmentservices, filename: 'appointment_services.csv'
  end

  def appointmentstatuses
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_appointmentstatuses, filename: 'appointment_statuses.csv'
  end

  ["ticket", "ticketsku", "ticketservice", "tip", "ticketpayment"].each do |new_method|
      define_method("#{new_method.pluralize}") do
        @appointments = Appointment.order('service_id')
        send_data @appointments.public_send("to_csv_#{new_method.pluralize}"), filename: "#{new_method.pluralize}.csv"
      end
    end

    ["bundle", "bundle_item", "bundle_item_group", "bundle_item_group_price", "attendee", "location", "membership", "customfield"].each do |new_method|
    define_method("#{new_method.pluralize}") do
      instance_variable_set("@#{new_method.pluralize}", new_method.camelcase.constantize.all)
      instance_var = instance_variable_get("@#{new_method.pluralize}")
      send_data instance_var.public_send("to_csv_#{new_method.pluralize}"), filename: "#{new_method.pluralize}.csv"
    end
  end

  def batchmanifest
    @batchmanifests = Batchmanifest.all
    send_data @batchmanifests.to_csv_batchmanifest, filename: "batch_manifest-#{Date.today}.csv"
  end

  def pets
    @clients = Client.all
    send_data @clients.to_csv_pets, filename: 'pets.csv'
  end

  def clients
    @clients = Client.all
    send_data @clients.to_csv_clients, filename: 'clients.csv'
  end

  def inventoryproducts
    @inventoryproducts = Inventoryproduct.all
    send_data @inventoryproducts.to_csv_inventoryproduct, filename: "inventory_products.csv"
  end

  def inventoryskus
    @inventoryskus = Inventorysku.all
    send_data @inventoryskus.to_csv_inventorysku, filename: "inventory_skus.csv"
  end

  def inventorystocks
    @inventorystocks = Inventorystock.all
    send_data @inventorystocks.to_csv_inventorystock, filename: "inventory_stocks.csv"
  end

  def membershiplocations
    @memberships = Membership.all
    send_data @memberships.to_csv_membershiplocations, filename: "membership_locations.csv"
  end

  def membershipbenefits
    @memberships = Membership.all
    send_data @memberships.to_csv_membershipbenefits, filename: "membership_benefits.csv"
  end

  def membershipservices
    @memberships = Membership.all
    send_data @memberships.to_csv_membershipservices, filename: "benefit_services.csv"
  end

  def membershipproducts
    @memberships = Membership.all
    send_data @memberships.to_csv_membershipproducts, filename: "benefit_products.csv"
  end

  ["petservice", "salonservice"].each do |new_method|
      define_method("#{new_method.pluralize}") do
        instance_variable_set("@#{new_method.pluralize}", (new_method.titleize.constantize).all)
        instance_var = instance_variable_get("@#{new_method.pluralize}")
        send_data instance_var.public_send("to_csv_#{new_method.pluralize}"), filename: "services.csv" # send method for all methods
      end
    end

  ["petcategory", "saloncategory", "classcategory"].each do |new_method|
      define_method("#{new_method.pluralize}") do
        instance_variable_set("@#{new_method.pluralize}", (new_method.titleize.constantize).all)
        instance_var = instance_variable_get("@#{new_method.pluralize}")
        send_data instance_var.public_send("to_csv_#{new_method.pluralize}"), filename: "categories.csv" # send method for all methods
      end
    end

  def pricings
    @salonpricings = Salonpricing.all
    send_data @salonpricings.to_csv_pricings, filename: "pricings.csv"
  end

  def staff
    @staffs = Staff.order("location_id")
    send_data @staffs.to_csv_staff, filename: "employees.csv"
  end

  def events
    @events = Event.all
    send_data @events.to_csv_events, filename: "classes.csv"
  end

  def classsettingattendees
    @classsettingattendees = Classsettingattendee.all
    send_data @classsettingattendees.to_csv_classsettingattendees, filename: "class_setting_attendees.csv"
  end

  def classsettinglocations
    @classsettinglocations = Classsettinglocation.all
    send_data @classsettinglocations.to_csv_classsettinglocations, filename: "class_setting_locations.csv"
  end

  def classsegmenttemplates
    @classsegmenttemplates = Classsegmenttemplates.all
    send_data @classsegmenttemplates.to_csv_classsegmenttemplates, filename: "segment_templates.csv"
  end
end
