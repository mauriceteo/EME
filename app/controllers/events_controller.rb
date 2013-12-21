class EventsController < ApplicationController
  # GET /events
  # GET /events.json
   rescue_from ActiveRecord::RecordNotFound, with: :dude_wheres_my_record
   
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
 
def new
  session[:event_params] ||= {}
  @event = Event.new(session[:event_params])
  @event.current_step = session[:event_step]
end

def create
  session[:event_params].deep_merge!(params[:event]) if params[:event]
  @event = Event.new(session[:event_params])
  @event.current_step = session[:event_step]
  if @event.valid?
    if params[:back_button]
      @event.previous_step
    elsif @event.last_step?
      @event.save if @event.all_valid?
    else
      @event.next_step
    end
    session[:event_step] = @event.current_step
  end
  if @event.new_record?
    render "new"
  else
    session[:event_step] = session[:event_params] = nil
    flash[:notice] = "Event saved!"
    redirect_to @event
  end
end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
