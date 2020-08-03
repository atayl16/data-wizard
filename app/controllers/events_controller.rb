class EventsController < ApplicationController
  def index
    @events = Event.all
    @classcategories = Classcategory.all
    @classsegmenttemplates = Classsegmenttemplate.all
    @classsettingattendees = Classsettingattendee.all
    @classsettinglocations = Classsettinglocation.all
    @classsettings = Classsetting.all
  end
end
