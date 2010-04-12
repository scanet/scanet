class WmiMethodsController < ApplicationController
  before_filter :login_required
  # GET /wmi_methods
  # GET /wmi_methods.xml

  layout "admin"

  def index
    @wmi_methods = WmiMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wmi_methods }
    end
  end

  # GET /wmi_methods/1
  # GET /wmi_methods/1.xml
  def show
    @wmi_method = WmiMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wmi_method }
    end
  end

  # GET /wmi_methods/new
  # GET /wmi_methods/new.xml
  def new
    @wmi_method = WmiMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wmi_method }
    end
  end

  # GET /wmi_methods/1/edit
  def edit
    @wmi_method = WmiMethod.find(params[:id])
  end

  # POST /wmi_methods
  # POST /wmi_methods.xml
  def create
    @wmi_method = WmiMethod.new(params[:wmi_method])

    respond_to do |format|
      if @wmi_method.save
        flash[:notice] = 'WmiMethod was successfully created.'
        format.html { redirect_to(@wmi_method) }
        format.xml  { render :xml => @wmi_method, :status => :created, :location => @wmi_method }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wmi_method.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wmi_methods/1
  # PUT /wmi_methods/1.xml
  def update
    @wmi_method = WmiMethod.find(params[:id])

    respond_to do |format|
      if @wmi_method.update_attributes(params[:wmi_method])
        flash[:notice] = 'WmiMethod was successfully updated.'
        format.html { redirect_to(@wmi_method) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wmi_method.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wmi_methods/1
  # DELETE /wmi_methods/1.xml
  def destroy
    @wmi_method = WmiMethod.find(params[:id])
    @wmi_method.destroy

    respond_to do |format|
      format.html { redirect_to(wmi_methods_url) }
      format.xml  { head :ok }
    end
  end
end
