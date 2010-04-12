class HardwareReportsController < ApplicationController
  before_filter :login_required
  # GET /hardware_reports
  # GET /hardware_reports.xml

  layout "admin"

  def index
    @hardware_reports = HardwareReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hardware_reports }
    end
  end

  # GET /hardware_reports/1
  # GET /hardware_reports/1.xml
  def show
    @hardware_report = HardwareReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hardware_report }
    end
  end

  # GET /hardware_reports/new
  # GET /hardware_reports/new.xml
  def new
    @hardware_report = HardwareReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hardware_report }
    end
  end

  # GET /hardware_reports/1/edit
  def edit
    @hardware_report = HardwareReport.find(params[:id])
  end

  # POST /hardware_reports
  # POST /hardware_reports.xml
  def create
    @hardware_report = HardwareReport.new(params[:hardware_report])

    respond_to do |format|
      if @hardware_report.save
        flash[:notice] = 'HardwareReport was successfully created.'
        format.html { redirect_to(@hardware_report) }
        format.xml  { render :xml => @hardware_report, :status => :created, :location => @hardware_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hardware_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hardware_reports/1
  # PUT /hardware_reports/1.xml
  def update
    @hardware_report = HardwareReport.find(params[:id])

    respond_to do |format|
      if @hardware_report.update_attributes(params[:hardware_report])
        flash[:notice] = 'HardwareReport was successfully updated.'
        format.html { redirect_to(@hardware_report) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hardware_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hardware_reports/1
  # DELETE /hardware_reports/1.xml
  def destroy
    @hardware_report = HardwareReport.find(params[:id])
    @hardware_report.destroy

    respond_to do |format|
      format.html { redirect_to(hardware_reports_url) }
      format.xml  { head :ok }
    end
  end
end
