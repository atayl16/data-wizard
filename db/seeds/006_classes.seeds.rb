require 'faker'

locations = 1..3
attendees = 1..3
categories = 1..3
events = 1..5

def create_attendee(id, name)
  Attendee.create!(attendee_id: id, name: name)
end
create_attendee(1, 'General Attendee')
create_attendee(2, 'Special Guest')
create_attendee(3, 'VIP')

def create_category(id, name)
  Classcategory.create!(category_id: id, name: name)
end
create_category(1, 'Charity Events')
create_category(2, 'Classes')
create_category(3, 'Community')

def create_events(category_id)
  events = 1..5
  events.each do |event|
    c = Event.new
    c.class_id = [category_id, event].join('')
    c.category_id = category_id
    c.name = Faker::Lorem.word.titlecase
    c.description = Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)
    c.instructions = Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)
    c.what_to_bring = Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)
    c.save
  end
end

def create_classsettingattendee(class_setting_id)
  attendee_ids = 1..3
  attendee_ids.each do |attendee|
    a = Classsettingattendee.new
    a.class_setting_attendee_id = [class_setting_id, attendee].join('')
    a.class_setting_id = class_setting_id
    a.attendee_id = attendee
    a.price = Faker::Number.between(from: 30, to: 50)
    a.capacity = Faker::Number.between(from: 5, to: 10)
    a.hide_price = 0
    a.members_only = 0
    a.save
  end
end

def create_classsettinglocation(class_setting_id)
  locations = 1..3
  locations.each do |location|
    l = Classsettinglocation.new
    l.class_setting_location_id = location
    l.class_setting_id = class_setting_id
    l.location_id = location
    l.save
  end
end

def create_classsetting(category_id)
  class_setting_ids = []
  events = 1..5
  events.each do |event|
    s = Classsetting.new
    s.class_id = [category_id, event].join('')
    s.class_setting_id = s.class_id
    s.name = 'Default Setting'
    s.cancellation_policy = 0
    s.save
    class_setting_ids << s.class_setting_id
  end
  class_setting_ids.each do |class_setting_id|
    create_classsettingattendee(class_setting_id)
    create_classsettinglocation(class_setting_id)
    create_segments(class_setting_id)
  end
end

def create_segments(class_setting_id)
  events = 1..5
  events.each do |_event|
    s = Classsegmenttemplate.new
    s.class_setting_id = class_setting_id
    s.segment_template_id = s.class_setting_id
    s.position = 0
    s.kind = 'service'
    s.duration = (Faker::Number.between(from: 1, to: 4) * 30)
    s.save
  end
end

categories.each do |category_id|
  create_events(category_id)
  create_classsetting(category_id)
end

puts 'Classes created'
