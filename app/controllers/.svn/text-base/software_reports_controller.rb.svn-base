class SoftwareReportsController < ApplicationController
  before_filter :login_required
  # GET /software_reports
  # GET /software_reports.xml

  layout "admin"

  def index
    @software_reports = SoftwareReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @software_reports }
    end
  end

  # GET /software_reports/1
  # GET /software_reports/1.xml
  def show
    @software_report = SoftwareReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @software_report }
    end
  end

  # GET /software_reports/new
  # GET /software_reports/new.xml
  def new
    @software_report = SoftwareReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @software_report }
    end
  end

  # GET /software_reports/1/edit
  def edit
    @software_report = SoftwareReport.find(params[:id])
  end

  # POST /software_reports
  # POST /software_reports.xml
  def create
    @software_report = SoftwareReport.new(params[:software_report])

    respond_to do |format|
      if @software_report.save
        flash[:notice] = 'SoftwareReport was successfully created.'
        format.html { redirect_to(@software_report) }
        format.xml  { render :xml => @software_report, :status => :created, :location => @software_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @software_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /software_reports/1
  # PUT /software_reports/1.xml
  def update
    @software_report = SoftwareReport.find(params[:id])

    respond_to do |format|
      if @software_report.update_attributes(params[:software_report])
        flash[:notice] = 'SoftwareReport was successfully updated.'
        format.html { redirect_to(@software_report) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @software_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /software_reports/1
  # DELETE /software_reports/1.xml
  def destroy
    @software_report = SoftwareReport.find(params[:id])
    @software_report.destroy

    respond_to do |format|
      format.html { redirect_to(software_reports_url) }
      format.xml  { head :ok }
    end
  end
end
