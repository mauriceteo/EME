class PageController < ApplicationController
  def home
    @events = Event.find(:all, :order => "RANDOM()")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  def about_us
  end

  def all_event
        @events = Event.find(:all, :order => "RANDOM()", :limit => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  def event_details
  end

  def event_preview
  end

  def event_publish
  end

  def my_ticket
    @events = Event.all

    respond_to do |format|
      format.html # my_event.html.erb
      format.json { render json: @events }
    end
  end

  def my_event
    @events = Event.all

    respond_to do |format|
      format.html # my_event.html.erb
      format.json { render json: @events }
    end
  end


  def contact_us
  end
end
