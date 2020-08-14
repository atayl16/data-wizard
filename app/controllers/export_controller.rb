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

  def tickets
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_tickets, filename: 'tickets.csv'
  end

  def ticketskus
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_ticketskus, filename: 'ticketsskuitems.csv'
  end

  def ticketservices
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_ticketservices, filename: 'ticketsserviceitems.csv'
  end

  def tips
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_tips, filename: 'tips.csv'
  end

  def ticketpayments
    @appointments = Appointment.order('service_id')
    send_data @appointments.to_csv_ticketpayments, filename: 'ticketspaymentitems.csv'
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

  def customfields
    @customfields = Customfield.all
    send_data @customfields.to_csv_customfields, filename: 'customfields.csv'
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

  def locations
    @locations = Location.all
    send_data @locations.to_csv_locations, filename: "locations.csv"
  end

  def memberships
    @memberships = Membership.all
    send_data @memberships.to_csv_memberships, filename: "memberships.csv"
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

  def petcategories
    @petcategories = Petcategory.all
    send_data @petcategories.to_csv_petcategories, filename: "categories.csv"
  end

  def petservices
    @petservices = Petservice.all
    send_data @petservices.to_csv_petservices, filename: "services.csv"
  end

  def saloncategories
    @saloncategories = Saloncategory.all
    send_data @saloncategories.to_csv_saloncategories, filename: "categories.csv"
  end

  def salonservices
    @salonservices = Salonservice.all
    send_data @salonservices.to_csv_salonservices, filename: "services.csv"
  end

  def pricings
    @salonpricings = Salonpricing.all
    send_data @salonpricings.to_csv_pricings, filename: "pricings.csv"
  end

  def staff
    @staffs = Staff.order("location_id")
    send_data @staffs.to_csv_staff, filename: "employees.csv"
  end

  def attendees
    @attendees = Attendee.all
    send_data @attendees.to_csv_attendees, filename: "attendees.csv"
  end

  def classcategories
    @classcategories = Classcategory.all
    send_data @classcategories.to_csv_classcategories, filename: "categories.csv"
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

  def bundles
    @bundles = Bundle.all
    send_data @bundles.to_csv_bundles, filename: "bundles.csv"
  end

  def bundle_items
    @bundle_items = BundleItem.all
    send_data @bundle_items.to_csv_bundle_items, filename: "bundle_items.csv"
  end

  def bundle_item_groups
    @bundle_item_groups = BundleItemGroup.all
    send_data @bundle_item_groups.to_csv_bundle_item_groups, filename: "bundle_item_groups.csv"
  end

  def bundle_item_group_prices
    @bundle_item_group_prices = BundleItemGroupPrice.all
    send_data @bundle_item_group_prices.to_csv_bundle_item_group_prices, filename: "bundle_item_group_prices.csv"
  end
end
