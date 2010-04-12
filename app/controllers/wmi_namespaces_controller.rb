class WmiNamespacesController < ApplicationController
  before_filter :login_required
  # GET /wmi_namespaces
  # GET /wmi_namespaces.xml

  layout "admin"

  def index
    @title = "WMI NAMESPACES"
    @wmi_namespaces = WmiNamespace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wmi_namespaces }
    end
  end

  # GET /wmi_namespaces/1
  # GET /wmi_namespaces/1.xml
  def show
    @title = "VER NAMESPACE"
    @wmi_namespace = WmiNamespace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wmi_namespace }
    end
  end

  # GET /wmi_namespaces/new
  # GET /wmi_namespaces/new.xml
  def new
    @title = "NUEVO WMI NAMESPACE"
    @wmi_namespace = WmiNamespace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wmi_namespace }
    end
  end

  # GET /wmi_namespaces/1/edit
  def edit
    @title = "EDITAR WMI NAMESPACE"
    @wmi_namespace = WmiNamespace.find(params[:id])
  end

  # POST /wmi_namespaces
  # POST /wmi_namespaces.xml
  def create
    @title = "NUEVO WMI NAMESPACE"
    @wmi_namespace = WmiNamespace.new(params[:wmi_namespace])

    respond_to do |format|
      if @wmi_namespace.save
        flash[:notice] = 'Wmi Namespace fué creado correctamente.'
        format.html { redirect_to(@wmi_namespace) }
        format.xml  { render :xml => @wmi_namespace, :status => :created, :location => @wmi_namespace }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wmi_namespace.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wmi_namespaces/1
  # PUT /wmi_namespaces/1.xml
  def update
    @title = "EDITAR WMI NAMESPACE"
    @wmi_namespace = WmiNamespace.find(params[:id])

    respond_to do |format|
      if @wmi_namespace.update_attributes(params[:wmi_namespace])
        flash[:notice] = 'Wmi Namespace fué actualizado correctamente.'
        format.html { redirect_to(@wmi_namespace) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wmi_namespace.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wmi_namespaces/1
  # DELETE /wmi_namespaces/1.xml
  def destroy
    @wmi_namespace = WmiNamespace.find(params[:id])
    @wmi_namespace.destroy

    respond_to do |format|
      format.html { redirect_to(wmi_namespaces_url) }
      format.xml  { head :ok }
    end
  end
end
