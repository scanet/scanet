class UsersController < ApplicationController
  before_filter :login_required
  # Be sure to include AuthenticationSystem in Application Controller instead
  #include AuthenticatedSystem

  layout "admin"

  def index
    @title = "USUARIOS"
    @users = User.find(:all)
  end

  # render new.rhtml
  def new
    @title = "Nuevo usuario"
  end

  def create
    cookies.delete :auth_token
    # protects against session fixation attacks, wreaks havoc with 
    # request forgery protection.
    # uncomment at your own risk
    # reset_session
    @user = User.new(params[:user])
    @user.rol = params[:user][:rol]
    @user.save
    if @user.errors.empty?
      self.current_user = @user
      #redirect_back_or_default('/')
      redirect_to(users_url)
      flash[:notice] = "Nuevo usuario registrado exitosamente!"
    else
      render :action => 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

end
