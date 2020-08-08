class EventsController < ApplicationController
  def index
    @events = Event.paginate(page: params[:page], :per_page => 5)
    @attendees = Attendee.paginate(page: params[:page], :per_page => 5)
    @classcategories = Classcategory.paginate(page: params[:page], :per_page => 5)
    @classsettingattendees = Classsettingattendee.paginate(page: params[:page], :per_page => 5)
    @classsettings = Classsetting.paginate(page: params[:page], :per_page => 5)
    @classsettinglocations = Classsettinglocation.paginate(page: params[:page], :per_page => 5)
    @classsegmenttemplates = Classsegmenttemplate.paginate(page: params[:page], :per_page => 5)
  end
end
