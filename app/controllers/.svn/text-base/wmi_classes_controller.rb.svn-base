class WmiClassesController < ApplicationController
  before_filter :login_required
  # GET /wmi_classes
  # GET /wmi_classes.xml

  layout "admin"

  def index
    @title = "WMI CLASSES"
    #@wmi_classes = WmiClass.all
    @wmi_classes = WmiClass.paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wmi_classes }
    end
  end

  # GET /wmi_classes/1
  # GET /wmi_classes/1.xml
  def show
    @title = "WMI CLASS"
    @wmi_class = WmiClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wmi_class }
    end
  end

  # GET /wmi_classes/new
  # GET /wmi_classes/new.xml
  def new
    @title = "NUEVO WMI CLASS"
    @wmi_class = WmiClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wmi_class }
    end
  end

  # GET /wmi_classes/1/edit
  def edit
    @title = "EDITAR WMI CLASS"
    @wmi_class = WmiClass.find(params[:id])
  end

  # POST /wmi_classes
  # POST /wmi_classes.xml
  def create
    @title = "NUEVO WMI CLASS"
    @wmi_class = WmiClass.new(params[:wmi_class])

    respond_to do |format|
      if @wmi_class.save
        flash[:notice] = 'Wmi Class fué creado correctamente.'
        format.html { redirect_to(@wmi_class) }
        format.xml  { render :xml => @wmi_class, :status => :created, :location => @wmi_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wmi_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wmi_classes/1
  # PUT /wmi_classes/1.xml
  def update
    @title = "EDITAR WMI CLASS"
    @wmi_class = WmiClass.find(params[:id])

    respond_to do |format|
      if @wmi_class.update_attributes(params[:wmi_class])
        flash[:notice] = 'Wmi Class fué actualizado correctamente.'
        format.html { redirect_to(@wmi_class) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wmi_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wmi_classes/1
  # DELETE /wmi_classes/1.xml
  def destroy
    @wmi_class = WmiClass.find(params[:id])
    @wmi_class.destroy

    respond_to do |format|
      format.html { redirect_to(wmi_classes_url) }
      format.xml  { head :ok }
    end
  end

  def change_state
    @state = params[:cvalue]
    @wmi_class = WmiClass.find(params[:id])
    @wmi_class.update_attribute("state", params[:cvalue])
    @wmi_properties = WmiProperty.find(:all, :conditions => {:wmi_class_id => @wmi_class.id})
    @wmi_properties.each do |property|
      property.update_attribute("state", params[:cvalue])
    end
  end
end
