class ReportsController < ApplicationController

  protect_from_forgery :only => [:update, :destroy]
  
  # GET /reports
  # GET /reports.xml
  def index
    @reports = Report.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reports }
    end
  end

  # GET /reports/1
  # GET /reports/1.xml
  def show
    @report = Report.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report }
    end
  end

  # GET /reports/new
  # GET /reports/new.xml
  def new
    @report = Report.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])
  end

  # POST /reports
  # POST /reports.xml
  def create
    @report = Report.new(params[:report])

    #Buscar equipo asociado
        if(@workstation = Workstation.find_by_name(@report.workstation_id))

          #Buscar tipo de dato wmi_class
          @wmi_property = WmiProperty.find(@report.wmi_property_id)
          @data_type = @wmi_property.wmi_class.data_type
          if @data_type == "Hardware"

            #Verifica si el reporte principal existe, de lo contrario lo crea
            if(@ws_hardware = Hardware.find_by_workstation_id(@workstation.id))

              #Verifica si en el reporte principal existe la propiedad, de lo contrario la crea
              if(@ws_hardware = Hardware.find_by_wmi_property_id_and_workstation_id(@report.wmi_property_id, @workstation.id))

                #Crear reporte de hardware
                @hw_report = HardwareReport.new(
                  :workstation_id => @workstation.id,
                  :wmi_property_id => @report.wmi_property_id,
                  :value => @report.wmi_property_value
                )
                @hw_report.save
                Alarm.check_hardware(@hw_report.id)
              else
                #Crear reporte original de hardware
                @hardware = Hardware.new(
                :workstation_id => @workstation.id,
                :wmi_property_id => @report.wmi_property_id,
                :value => @report.wmi_property_value
              )
              @hardware.save
              end

            else
              #Crear reporte original de hardware
              @hardware = Hardware.new(
                :workstation_id => @workstation.id,
                :wmi_property_id => @report.wmi_property_id,
                :value => @report.wmi_property_value
              )
              @hardware.save
            end

          elsif @data_type == "Software"

            #Verifica si el reporte principal existe, de lo contrario lo crea
            if(@ws_software = Software.find_by_workstation_id(@workstation.id))

              #Verifica si en el reporte principal existe la propiedad, de lo contrario la crea
              if(@ws_software = Software.find_by_wmi_property_id_and_workstation_id(@report.wmi_property_id, @workstation.id))

                #Crear reporte de software
                @sw_report = SoftwareReport.new(
                  :workstation_id => @workstation.id,
                  :wmi_property_id => @report.wmi_property_id,
                  :value => @report.wmi_property_value
                )
                @sw_report.save
                Alarm.check_software(@sw_report.id)
              else
                #Crear reporte original de software
                @software = Software.new(
                  :workstation_id => @workstation.id,
                  :wmi_property_id => @report.wmi_property_id,
                  :value => @report.wmi_property_value
                )
                @software.save
              end
              
            else
              #Crear reporte original de software
              @software = Software.new(
                :workstation_id => @workstation.id,
                :wmi_property_id => @report.wmi_property_id,
                :value => @report.wmi_property_value
              )
              @software.save
            end
          end
        #else
          #redirect_to(@report)
        end

    respond_to do |format|
      if @report.save
        flash[:notice] = 'Report was successfully created.'
        format.html { redirect_to(@report) }
        format.xml  { render :xml => @report, :status => :created, :location => @report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reports/1
  # PUT /reports/1.xml
  def update
    @report = Report.find(params[:id])

    respond_to do |format|
      if @report.update_attributes(params[:report])
        flash[:notice] = 'Report was successfully updated.'
        format.html { redirect_to(@report) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.xml
  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to(reports_url) }
      format.xml  { head :ok }
    end
  end
end
