class WmiPropertiesController < ApplicationController
  before_filter :login_required
  # GET /wmi_properties
  # GET /wmi_properties.xml
  
  layout "admin"

  def index
    @title = "WMI PROPERTIES"
    #@wmi_properties = WmiProperty.all
    @wmi_properties = WmiProperty.paginate :page => params[:page], :per_page => 50

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wmi_properties }
    end
  end

  # GET /wmi_properties/1
  # GET /wmi_properties/1.xml
  def show
    @title = "WMI PROPERTY"
    @wmi_property = WmiProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wmi_property }
    end
  end

  # GET /wmi_properties/new
  # GET /wmi_properties/new.xml
  def new
    @title = "NUEVO WMI PROPERTY"
    @wmi_property = WmiProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wmi_property }
    end
  end

  # GET /wmi_properties/1/edit
  def edit
    @title = "EDITAR WMI PROPERTY"
    @wmi_property = WmiProperty.find(params[:id])
  end

  # POST /wmi_properties
  # POST /wmi_properties.xml
  def create
    @title = "NUEVO WMI PROPERTY"
    @wmi_property = WmiProperty.new(params[:wmi_property])

    respond_to do |format|
      if @wmi_property.save
        @client = Client.new(
          :wmi_namespace_id   => @wmi_property.wmi_class.wmi_namespace.id,
          :wmi_class_id       => @wmi_property.wmi_class.id,
          :wmi_property_id    => @wmi_property.id,
          :wmi_namespace_name => @wmi_property.wmi_class.wmi_namespace.name,
          :wmi_class_name     => @wmi_property.wmi_class.name,
          :wmi_property_name  => @wmi_property.name
          )
        @client.save
        flash[:notice] = 'Wmi Property fué creado correctamente.'
        format.html { redirect_to(@wmi_property) }
        format.xml  { render :xml => @wmi_property, :status => :created, :location => @wmi_property }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wmi_property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wmi_properties/1
  # PUT /wmi_properties/1.xml
  def update
     @title = "EDITAR WMI PROPERTY"
    @wmi_property = WmiProperty.find(params[:id])

    respond_to do |format|
      if @wmi_property.update_attributes(params[:wmi_property])
        flash[:notice] = 'Wmi Property fué actualizado correctamente.'
        format.html { redirect_to(@wmi_property) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wmi_property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wmi_properties/1
  # DELETE /wmi_properties/1.xml
  def destroy
    @wmi_property = WmiProperty.find(params[:id])
    @wmi_property.destroy

    respond_to do |format|
      format.html { redirect_to(wmi_properties_url) }
      format.xml  { head :ok }
    end
  end

  def change_state
    @state = params[:cvalue]
    @property = WmiProperty.find(params[:id])
    @property.update_attribute("state", params[:cvalue])
  end
end
