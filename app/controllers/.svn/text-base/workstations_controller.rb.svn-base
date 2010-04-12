class WorkstationsController < ApplicationController
  before_filter :login_required
  # GET /workstations
  # GET /workstations.xml

  layout "admin"

  def index
    @title = "EQUIPOS"
    @workstations = Workstation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workstations }
    end
  end

  # GET /workstations/1
  # GET /workstations/1.xml
  def show
    if(@workstation = Workstation.find_by_name(params[:id]))
      @title = "EQUIPO: "+@workstation.name
    elsif (@workstation = Workstation.find(params[:id]))
      @title = "EQUIPO: "+@workstation.name
    end
    
    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @workstation }
    end
  end

  # GET /workstations/new
  # GET /workstations/new.xml
  def new
    @title = "REGISTRO DE EQUIPOS"
    @workstation = Workstation.new
    @workstation.x = params[:x]
    @workstation.y = params[:y]
    render :layout => false
#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @workstation }
#    end
  end

  # GET /workstations/1/edit
  def edit
    @workstation = Workstation.find(params[:workstation])
  end

  # POST /workstations
  # POST /workstations.xml
  def create
    @title = "REGISTRO DE EQUIPOS"
    @workstation = Workstation.new(params[:workstation])
    @workstation.login
    
    respond_to do |format|
      if @workstation.save
        flash[:notice] = 'El equipo '+@workstation.name+' fue registrado correctamente.'
        format.html { redirect_to(@workstation) }
        format.xml  { render :xml => @workstation, :status => :created, :location => @workstation }
      else
        format.html { render :action => "new", :layout => false }
        format.xml  { render :xml => @workstation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workstations/1
  # PUT /workstations/1.xml
  def update
    @workstation = Workstation.find(params[:id])

    respond_to do |format|
      if @workstation.update_attributes(params[:workstation])
        flash[:notice] = 'Workstation was successfully updated.'
        format.html { redirect_to(@workstation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workstation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workstations/1
  # DELETE /workstations/1.xml
  def destroy
    @workstation = Workstation.find(params[:id])
    @workstation.destroy

    respond_to do |format|
      format.html { redirect_to(workstations_url) }
      format.xml  { head :ok }
    end
  end

  def wmi_configuration
    #render :partial => "wmi_configuration"
  end

  def plano
    
  end

  def coordenadas
    @workstations = Workstation.find(:all)
    render :layout => false
  end

  def hw_report
    @workstation = Workstation.find(params[:id])
    @title = "Reporte de Hardware: "+ @workstation.name+" - "+@workstation.ip
    #@hardware = Hardware.find_all_by_workstation_id(@workstation.id)
#    @wmi_properties = WmiProperty.find(:all, :select => 'DISTINCT wmi_class_id')
    @wmi_classes = WmiClass.find(:all, :conditions => {:state => true} )
#    wmi_p = []
#    @wmi_class.each do |wp|
#      wmi_p << wp.wmi_class_id
#    end
#    @hardware = Hardware.find(:all, :conditions => {:workstation_id => @workstation.id, :wmi_property_id => wmi_p })
    #@devices = @hardware.wmi_property.wmi_class.find(:all, :select => 'DISTINCT name', :conditions => {:workstation_id => @workstation.id })
    #@hardware = Hardware.paginate :page => params[:page], :per_page => 10, :conditions => {:workstation_id => @workstation.id }
    render :layout => false
  end

  def ajax_show_wmi_properties
    wmi_class_id = params[:wmi_class]
    wmi_properties = WmiProperty.find(:all, :conditions => {:wmi_class_id => wmi_class_id})
    wmi_p = []
    wmi_properties.each do |wp|
      wmi_p << wp.id
    end
    @workstation = Workstation.find(params[:workstation])
    @hardware = Hardware.find(:all, :conditions => {:workstation_id => @workstation.id, :wmi_property_id => wmi_p})
  end

  def sw_report
    @workstation = Workstation.find(params[:id])
    @title = "Reporte de Software: "+ @workstation.name+" - "+@workstation.ip
    #@software = Software.find_all_by_workstation_id(@workstation.id)
    @software = Software.paginate :page => params[:page], :per_page => 10, :conditions => {:workstation_id => @workstation.id }
    render :layout => false
  end

  def history
    @workstation = Workstation.find(params[:id])
    @title = "Historial de Reportes: "+ @workstation.name+" - "+@workstation.ip
    #@history = HardwareReport.find_all_by_workstation_id(@workstation.id, :order => "wmi_property_id DESC, created_at DESC" )
    @history = HardwareReport.paginate :page => params[:page], :per_page => 10, :conditions => {:workstation_id => @workstation.id }, :order => "wmi_property_id DESC, created_at DESC"
    render :layout => false
  end

  def alarms
    @workstation = Workstation.find(params[:id])
    @title = "Alarmas: "+ @workstation.name+" - "+@workstation.ip
    @alarm = Alarm.paginate :page => params[:page], :per_page => 10, :conditions => {:workstation_id => @workstation.id }, :order => "created_at DESC"
    render :layout => false
  end

  def ajax_dhcp
    @dhcp = params[:cvalue]
  end

end
