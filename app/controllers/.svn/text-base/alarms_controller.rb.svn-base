class AlarmsController < ApplicationController
  before_filter :login_required
  # GET /alarms
  # GET /alarms.xml

  layout "admin"

  def index
    @title = "ALARMAS"
    @alarms = Alarm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alarms }
    end
  end

  # GET /alarms/1
  # GET /alarms/1.xml
  def show
    @alarm = Alarm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alarm }
    end
  end

  # GET /alarms/new
  # GET /alarms/new.xml
  def new
    @alarm = Alarm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alarm }
    end
  end

  # GET /alarms/1/edit
  def edit
    @alarm = Alarm.find(params[:id])
  end

  # POST /alarms
  # POST /alarms.xml
  def create
    @alarm = Alarm.new(params[:alarm])

    respond_to do |format|
      if @alarm.save
        flash[:notice] = 'Alarm was successfully created.'
        format.html { redirect_to(@alarm) }
        format.xml  { render :xml => @alarm, :status => :created, :location => @alarm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alarm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alarms/1
  # PUT /alarms/1.xml
  def update
    @alarm = Alarm.find(params[:id])

    respond_to do |format|
      if @alarm.update_attributes(params[:alarm])
        flash[:notice] = 'Alarm was successfully updated.'
        format.html { redirect_to(@alarm) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alarm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alarms/1
  # DELETE /alarms/1.xml
  def ignore
    @alarm = Alarm.find(params[:id])
    Alarm.ignore_alarm(@alarm.id)
    #@alarm.destroy

    respond_to do |format|
      format.html { redirect_to(alarms_url) }
      format.xml  { head :ok }
    end
  end
end
