require 'rake'
require 'rake/task'
Rails.application.load_tasks
class ExportController < ActionController::Base


  ["appointment", "appointmentservice", "appointmentstatus", "ticket", "ticketsku", "ticketservice", "tip", "ticketpayment"].each do |new_method|
      define_method("#{new_method.pluralize}") do
        @appointments = Appointment.order('service_id')
        send_data @appointments.public_send("to_csv_#{new_method.pluralize}"), filename: "#{new_method.pluralize}.csv"
      end
    end

  ["bundle", "bundle_item", "bundle_item_group", "bundle_item_group_price", "attendee", "location", "membership", "customfield", "client", "inventoryproduct", "inventorysku", "inventorystock", "membershiplocation", "membershipbenefit", "membershipservice", "membershipproduct", "classsettingattendee", "classsettinglocation", "classsegmenttemplates", "event"].each do |new_method|
    define_method("#{new_method.pluralize}") do
      instance_variable_set("@#{new_method.pluralize}", new_method.camelcase.constantize.all)
      instance_var = instance_variable_get("@#{new_method.pluralize}")
      send_data instance_var.public_send("to_csv_#{new_method.pluralize}"), filename: "#{new_method.pluralize}.csv"
    end
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

  def batchmanifest
    @batchmanifests = Batchmanifest.all
    send_data @batchmanifests.to_csv_batchmanifest, filename: "batch_manifest-#{Date.today}.csv"
  end

  def pets
    @clients = Client.all
    send_data @clients.to_csv_pets, filename: 'pets.csv'
  end

  def staff
    @staffs = Staff.order("location_id")
    send_data @staffs.to_csv_staff, filename: "staffs.csv"
  end

  def pricings
    @salonpricings = Salonpricing.all
    send_data @salonpricings.to_csv_pricings, filename: "pricings.csv"
  end
end
