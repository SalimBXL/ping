class IpsController < ApplicationController
  before_action :set_ip, only: %i[ show edit update destroy ]
  before_action :get_rooms, only: [:new, :edit, :create]
  before_action :get_devices, only: [:new, :edit, :create]
  before_action :get_operating_systems, only: [:new, :edit, :create]

  # GET /ips or /ips.json
  def index

    @view = (params[:view])

    unless @view
      @ips = Ip.all.order(:ip_address, :room, :hostname)
    else
      @services = Service.order(:floor, :name)
      @sectors = Sector.order(:name)
      get_rooms
      get_devices
      @ips = Hash.new
      @rooms.each do |room|
        @ips[room] = Ip.where(room: room).order(:hostname)
      end
    end
  end

  # GET /ips/1 or /ips/1.json
  def show
  end

  # GET /ips/new
  def new
    @ip = Ip.new
  end

  # GET /ips/1/edit
  def edit
  end

  # POST /ips or /ips.json
  def create
    @ip = Ip.new(ip_params)

    respond_to do |format|
      if @ip.save
        format.html { redirect_to ips_path}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ips/1 or /ips/1.json
  def update
    respond_to do |format|
      if @ip.update(ip_params)
        format.html { redirect_to ips_path}
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ips/1 or /ips/1.json
  def destroy
    @ip.destroy
    respond_to do |format|
      format.html { redirect_to ips_url, notice: "Ip was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip
      @ip = Ip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ip_params
      params.require(:ip).permit(:hostname, :ip_address, :plug, :room_id, :device_id, :operating_system_id)
    end

    def get_rooms
      @rooms = Room.order(:service_id, :name)
    end

    def get_devices
      @devices = Device.order(:name)
    end

    def get_operating_systems
      @operating_systems = OperatingSystem.order(:name)
    end
end
