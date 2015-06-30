class DesarrolloAppsController < ApplicationController
  before_action :set_desarrollo_app, only: [:show, :edit, :update, :destroy]

  # GET /desarrollo_apps
  # GET /desarrollo_apps.json
  def index
    @desarrollo_apps = DesarrolloApp.all
  end

  # GET /desarrollo_apps/1
  # GET /desarrollo_apps/1.json
  def show
  end

  # GET /desarrollo_apps/new
  def new
    @desarrollo_app = DesarrolloApp.new
  end

  # GET /desarrollo_apps/1/edit
  def edit
  end

  # POST /desarrollo_apps
  # POST /desarrollo_apps.json
  def create
    @desarrollo_app = DesarrolloApp.new(desarrollo_app_params)

    respond_to do |format|
      if @desarrollo_app.save
        format.html { redirect_to @desarrollo_app, notice: 'Desarrollo app was successfully created.' }
        format.json { render :show, status: :created, location: @desarrollo_app }
      else
        format.html { render :new }
        format.json { render json: @desarrollo_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desarrollo_apps/1
  # PATCH/PUT /desarrollo_apps/1.json
  def update
    respond_to do |format|
      if @desarrollo_app.update(desarrollo_app_params)
        format.html { redirect_to @desarrollo_app, notice: 'Desarrollo app was successfully updated.' }
        format.json { render :show, status: :ok, location: @desarrollo_app }
      else
        format.html { render :edit }
        format.json { render json: @desarrollo_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desarrollo_apps/1
  # DELETE /desarrollo_apps/1.json
  def destroy
    @desarrollo_app.destroy
    respond_to do |format|
      format.html { redirect_to desarrollo_apps_url, notice: 'Desarrollo app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desarrollo_app
      @desarrollo_app = DesarrolloApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desarrollo_app_params
      params.require(:desarrollo_app).permit(:nombre, :email_telefono, :descripcion)
    end
end
