class UbicationsController < ApplicationController
  before_filter :login_required
  # GET /ubications
  # GET /ubications.xml

  layout "admin"
  
  def index
    @title = "UBICACIONES"
    @ubications = Ubication.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ubications }
    end
  end

  # GET /ubications/1
  # GET /ubications/1.xml
  def show
    @ubication = Ubication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ubication }
    end
  end

  # GET /ubications/new
  # GET /ubications/new.xml
  def new
    @title = "NUEVA UBICACION"
    @ubication = Ubication.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ubication }
    end
  end

  # GET /ubications/1/edit
  def edit
    @title = "EDITAR UBICACION"
    @ubication = Ubication.find(params[:id])
  end

  # POST /ubications
  # POST /ubications.xml
  def create
    @ubication = Ubication.new(params[:ubication])

    respond_to do |format|
      if @ubication.save
        flash[:notice] = 'Ubicación creada correctamente.'
        format.html { redirect_to(@ubication) }
        format.xml  { render :xml => @ubication, :status => :created, :location => @ubication }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ubication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ubications/1
  # PUT /ubications/1.xml
  def update
    @ubication = Ubication.find(params[:id])

    respond_to do |format|
      if @ubication.update_attributes(params[:ubication])
        flash[:notice] = 'Ubicación actualizada correctamente.'
        format.html { redirect_to(@ubication) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ubication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ubications/1
  # DELETE /ubications/1.xml
  def destroy
    @ubication = Ubication.find(params[:id])
    @ubication.destroy

    respond_to do |format|
      format.html { redirect_to(ubications_url) }
      format.xml  { head :ok }
    end
  end
end
