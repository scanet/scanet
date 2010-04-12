class WmiEventsController < ApplicationController
  before_filter :login_required
  # GET /wmi_events
  # GET /wmi_events.xml

  layout "admin"

  def index
    @wmi_events = WmiEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wmi_events }
    end
  end

  # GET /wmi_events/1
  # GET /wmi_events/1.xml
  def show
    @wmi_event = WmiEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wmi_event }
    end
  end

  # GET /wmi_events/new
  # GET /wmi_events/new.xml
  def new
    @wmi_event = WmiEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wmi_event }
    end
  end

  # GET /wmi_events/1/edit
  def edit
    @wmi_event = WmiEvent.find(params[:id])
  end

  # POST /wmi_events
  # POST /wmi_events.xml
  def create
    @wmi_event = WmiEvent.new(params[:wmi_event])

    respond_to do |format|
      if @wmi_event.save
        flash[:notice] = 'WmiEvent was successfully created.'
        format.html { redirect_to(@wmi_event) }
        format.xml  { render :xml => @wmi_event, :status => :created, :location => @wmi_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wmi_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wmi_events/1
  # PUT /wmi_events/1.xml
  def update
    @wmi_event = WmiEvent.find(params[:id])

    respond_to do |format|
      if @wmi_event.update_attributes(params[:wmi_event])
        flash[:notice] = 'WmiEvent was successfully updated.'
        format.html { redirect_to(@wmi_event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wmi_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wmi_events/1
  # DELETE /wmi_events/1.xml
  def destroy
    @wmi_event = WmiEvent.find(params[:id])
    @wmi_event.destroy

    respond_to do |format|
      format.html { redirect_to(wmi_events_url) }
      format.xml  { head :ok }
    end
  end
end
