class StoresController < ApplicationController
  # GET /stores
  # GET /stores.json
  def index
 @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  
end
