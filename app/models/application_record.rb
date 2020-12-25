class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.to_csv_staff
    attributes = %w[employee_id name title email username location_id deleted]
    export(attributes)
  end

  def self.to_csv_appointments
    attributes = %w[appointment_id location_id employee_id client_id child_id notes has_specific_employee start_time end_time]
    export(attributes)
  end

  def self.to_csv_appointmentservices
    attributes = %w[appointment_id service_id price duration]
    export(attributes)
  end

  def self.to_csv_appointmentstatuses
    attributes = %w[appointment_id status change_time employee_id]
    export(attributes)
  end

  def self.to_csv_tickets
    attributes = %w[ticket_id location_id client_id ticket_status employee_id employee_id start_time]
    headers = %w[ticket_id location_id client_id status employee_id closed_by_employee_id closed_at]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_ticketskus
    attributes = %w[ticket_id inventory_sku_id quantity sku_amount sku_amount]
    headers = %w[ticket_id inventory_sku_id quantity amount_before_discount amount]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_ticketservices
    attributes = %w[ticket_id appointment_id service_id quantity price price]
    headers = %w[ticket_id appointment_id service_id quantity amount_before_discount amount]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_ticketpayments
    attributes = %w[ticket_id payment_item_id ticket_type amount]
    headers = %w[ticket_id payment_item_id type amount]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_tips
    attributes = %w[ticket_id tip appointment_id]
    headers = %w[ticket_id amount appointment_id]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_giftcards
    attributes = %w[code amount start_time]
    headers = %w[code amount purchased_at]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_batchmanifest
    attributes = %w[filename filetype]
    export(attributes)
  end

  def self.to_csv_clients
    attributes = %w[client_id	client_first_name	client_last_name	email	mobile_phone	home_phone	work_phone	street_address	street_address_2	city	state	zip	country	gender	date_of_birth	contact_preference	client_since	can_receive_automated_emails	can_receive_manual_emails	can_receive_automated_sms	can_receive_manual_sms	notes	preferred_employee_id	preferred_location_id	deleted associated_location_ids]
    export(attributes)
  end

  def self.to_csv_pets
    attributes = %w[child_id client_id deleted pet_name]
    export(attributes)
  end

  def self.to_csv_customfields
    attributes = %w[uuid title field_type required applicable_to]
    export(attributes)
  end

  def self.to_csv_inventoryproducts
    attributes = %w[product_id name brand category vendor description visible_to_clients commissionable discontinued discontinued_reasons alternative_product_ids deleted]
    export(attributes)
  end

  def self.to_csv_inventoryskus
    attributes = %w[sku_id product_id name number barcode target_quantity alert_threshold deleted]
    export(attributes)
  end

  def self.to_csv_inventorystocks
    attributes = %w[sku_id location_id quantity price cost vendor expiration_date stock_type deleted]
    export(attributes)
  end

  def self.to_csv_locations
    attributes = %w[location_id	nickname country street_address street_address_2 city state zip phone_number deleted]
    export(attributes)
  end

  def self.to_csv_memberships
    attributes = %w[membership_id membership_name description registration_fee_amount cancellation_fee_amount price period_size period_type billing_cycle_type billing_day payment_type]
    headers = %w[membership_id name description registration_fee_amount cancellation_fee_amount price period_size period_type billing_cycle_type billing_day payment_type]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_membershiplocations
    attributes = %w[membership_id location_id]
    export(attributes)
  end

  def self.to_csv_membershipbenefits
    attributes = %w[membership_id benefit_name benefit_id benefit_type benefit_discount_type benefit_value benefit_limit eligible_for_all_services eligible_for_all_products]
    headers = %w[membership_id name benefit_id benefit_type benefit_discount_type benefit_value benefit_limit eligible_for_all_services eligible_for_all_products]
    export_w_headers(attributes, headers)
  end

  def self.to_csv_membershipservices
    attributes = %w[benefit_id service_id]
    export(attributes)
  end

  def self.to_csv_membershipproducts
    attributes = %w[benefit_id product_id]
    export(attributes)
  end

  def self.to_csv_petcategories
    attributes = %w[category_id name online deleted]
    export(attributes)
  end

  def self.to_csv_petservices
    attributes = %w[service_id category_id name description	duration is_add_on is_custom breed_group_id sku deleted]
    export(attributes)
  end

  def self.to_csv_saloncategories
    attributes = %w[category_id name online deleted]
    export(attributes)
  end

  def self.to_csv_pricings
    attributes = %w[service_id location_id employee_id price deleted]
    export(attributes)
  end

  def self.to_csv_salonservices
    attributes = %w[service_id category_id name description	duration is_add_on is_custom breed_group_id sku deleted]
    export(attributes)
  end

  def self.to_csv_attendees
    attributes = %w[attendee_id name]
    export(attributes)
  end

  def self.to_csv_classcategories
    attributes = %w[category_id name]
    export(attributes)
  end

  def self.to_csv_events
    attributes = %w[class_id category_id name description instructions what_to_bring hide_prices]
    export(attributes)
  end

  def self.to_csv_classsettings
    attributes = %w[class_setting_id class_id name cancellation_policy cancellation_interval cancellation_value]
    export(attributes)
  end

  def self.to_csv_classsettingattendees
    attributes = %w[class_setting_attendee_id class_setting_id attendee_id price capacity hide_price book_from_interval book_from_datatype book_upto_interval book_upto_datatype members_only]
    export(attributes)
  end

  def self.to_csv_classsettinglocations
    attributes = %w[class_setting_location_id	class_setting_id location_id]
    export(attributes)
  end

  def self.to_csv_classsegmenttemplates
    attributes = %w[segment_template_id	class_setting_id position kind duration]
    export(attributes)
  end

  def self.to_csv_bundles
    attributes = %w[bundle_id name validity_period in_membership available_online]
    export(attributes)
  end

  def self.to_csv_bundle_items
    attributes = %w[bundle_item_group_id resource_type resource_id]
    export(attributes)
  end

  def self.to_csv_bundle_item_groups
    attributes = %w[bundle_item_group_id bundle_id quantity include_all_skus include_all_variations include_all_classes]
    export(attributes)
  end

  def self.to_csv_bundle_item_group_prices
    attributes = %w[bundle_item_group_id location_id price_per_item]
    export(attributes)
  end

  def run
    truncate!
    connection.execute("TRUNCATE TABLE #{table_name};")
    connection.reset_pk_sequence!(table_name)
  end

  def self.export(attributes)
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |row|
        csv << attributes.map { |attr| row.send(attr) }
      end
    end
  end

  def self.export_w_headers(attributes, headers)
    CSV.generate(headers: true) do |csv|
      csv << headers
      all.each do |row|
        csv << attributes.map { |attr| row.send(attr) }
      end
    end
  end
end
