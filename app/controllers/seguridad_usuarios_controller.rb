class SeguridadUsuariosController < ApplicationController
  before_action :set_seguridad_usuario, only: [:show, :edit, :update, :destroy]

  layout 'administracion'

  # GET /seguridad_usuarios
  # GET /seguridad_usuarios.json
  def index
    @seguridad_usuarios = SeguridadUsuario.all
  end

  # GET /seguridad_usuarios/1
  # GET /seguridad_usuarios/1.json
  def show
  end

  # GET /seguridad_usuarios/new
  def new
    @seguridad_usuario = SeguridadUsuario.new
  end

  # GET /seguridad_usuarios/1/edit
  def edit
  end

  # POST /seguridad_usuarios
  # POST /seguridad_usuarios.json
  def create
    @seguridad_usuario = SeguridadUsuario.new(seguridad_usuario_params)

    respond_to do |format|
      if @seguridad_usuario.save
        format.html { redirect_to @seguridad_usuario, notice: 'Seguridad usuario was successfully created.' }
        format.json { render :show, status: :created, location: @seguridad_usuario }
      else
        format.html { render :new }
        format.json { render json: @seguridad_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seguridad_usuarios/1
  # PATCH/PUT /seguridad_usuarios/1.json
  def update
    respond_to do |format|
      if @seguridad_usuario.update(seguridad_usuario_params)
        format.html { redirect_to @seguridad_usuario, notice: 'Seguridad usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @seguridad_usuario }
      else
        format.html { render :edit }
        format.json { render json: @seguridad_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguridad_usuarios/1
  # DELETE /seguridad_usuarios/1.json
  def destroy
    @seguridad_usuario.destroy
    respond_to do |format|
      format.html { redirect_to seguridad_usuarios_url, notice: 'Seguridad usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seguridad_usuario
      @seguridad_usuario = SeguridadUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seguridad_usuario_params
      params.require(:seguridad_usuario).permit(:username, :nombres, :apellidos)
    end
end
