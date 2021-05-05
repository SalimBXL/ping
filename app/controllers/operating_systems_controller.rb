class OperatingSystemsController < ApplicationController
  before_action :set_operating_system, only: %i[ show edit update destroy ]

  # GET /operating_systems or /operating_systems.json
  def index
    @operating_systems = OperatingSystem.all.order(:name)
  end

  # GET /operating_systems/1 or /operating_systems/1.json
  def show
  end

  # GET /operating_systems/new
  def new
    @operating_system = OperatingSystem.new
  end

  # GET /operating_systems/1/edit
  def edit
  end

  # POST /operating_systems or /operating_systems.json
  def create
    @operating_system = OperatingSystem.new(operating_system_params)

    respond_to do |format|
      if @operating_system.save
        format.html { redirect_to operating_systems_path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operating_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operating_systems/1 or /operating_systems/1.json
  def update
    respond_to do |format|
      if @operating_system.update(operating_system_params)
        format.html { redirect_to operating_systems_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @operating_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operating_systems/1 or /operating_systems/1.json
  def destroy
    @operating_system.destroy
    respond_to do |format|
      format.html { redirect_to operating_systems_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operating_system
      @operating_system = OperatingSystem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def operating_system_params
      params.require(:operating_system).permit(:name)
    end
end
