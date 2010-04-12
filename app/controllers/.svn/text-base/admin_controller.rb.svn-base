class AdminController < ApplicationController
  before_filter :login_required
  
  layout "admin"

  def index
    #redirect_to :action => "wmi_configuration", :id => "0"
    #render :layout => false
    session[:admin] = false
  end

  def wmi_configuration
    @title = "Configuración del Sistema"
    @wmi_rule = Client.find(:all)
  end

  def insertar
    render :layout => false
  end

  def workstations
    @workstations = Workstation.find(:all)
    @tool = Tool.find(params[:id])
    @title = "EJECUTAR HERRAMIENTA: "+ @tool.name

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tool }
    end
  end

  def run_tool
    @tool = Tool.find(params[:tool])
    @workstation = Workstation.find(params[:id])
    @title = @tool.name+" - "+@workstation.name+" - "+@workstation.ip
    @console_command = @tool.command+" "+@tool.params+" "+@workstation.ip
    @command = @tool.command+" "+@tool.params+" "+@workstation.ip+" "+' > tools_output/'+@tool.command+"_"+@workstation.ip+".txt"
    @output = %x{#{@command}}
    data = ''
    f = File.open('tools_output/'+@tool.command+"_"+@workstation.ip+".txt", "r")
    f.each_line do |line|
      data += line+"<br>"
    end
    @final_output = data
    @exitcode = $?.exitstatus
    render :layout => false
  end

  def inicio
    
  end

  def login
    if params[:user]
      @user = User.find(:first, :conditions => {:usuario => params[:user][:usuario], :clave => params[:user][:clave]})
      if @user
        session[:admin] = true
        redirect_to :action => "inicio"
      else
        session[:admin] = false
        redirect_to :action => "index"
      end
    end
  end

  def ajax_regenerate_webservice
    webservice = Client.find(:all)
    webservice.each do |ws|
      ws.destroy
    end
    wmi_property = WmiProperty.find(:all, :conditions => {:state => true})
    wmi_property.each do |p|
      client = Client.new(
        :wmi_namespace_id   => p.wmi_class.wmi_namespace.id,
        :wmi_class_id       => p.wmi_class.id,
        :wmi_property_id    => p.id,
        :wmi_namespace_name => p.wmi_class.wmi_namespace.name,
        :wmi_class_name     => p.wmi_class.name,
        :wmi_property_name  => p.name
        )
      client.save
    end
    @wmi_rule = Client.find(:all)
  end

  def plano
    @title = "VISUALIZACION DE PLANO Y EQUIPOS"
    config = Configuration.find(1)
    @map_path = config.map_path
  end
end
