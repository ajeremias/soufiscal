class ComplaintAddressesController < ApplicationController
  before_action :set_complaint_address, only: [:show, :edit, :update, :destroy]

  # GET /complaint_addresses
  # GET /complaint_addresses.json
  def index
    @complaint_addresses = ComplaintAddress.all
  end

  # GET /complaint_addresses/1
  # GET /complaint_addresses/1.json
  def show
  end

  # GET /complaint_addresses/new
  def new
    @complaint_address = ComplaintAddress.new
  end

  # GET /complaint_addresses/1/edit
  def edit
  end

  # POST /complaint_addresses
  # POST /complaint_addresses.json
  def create
    @complaint_address = ComplaintAddress.new(complaint_address_params)

    respond_to do |format|
      if @complaint_address.save
        format.html { redirect_to @complaint_address, notice: 'Complaint address was successfully created.' }
        format.json { render :show, status: :created, location: @complaint_address }
      else
        format.html { render :new }
        format.json { render json: @complaint_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaint_addresses/1
  # PATCH/PUT /complaint_addresses/1.json
  def update
    respond_to do |format|
      if @complaint_address.update(complaint_address_params)
        format.html { redirect_to @complaint_address, notice: 'Complaint address was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint_address }
      else
        format.html { render :edit }
        format.json { render json: @complaint_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaint_addresses/1
  # DELETE /complaint_addresses/1.json
  def destroy
    @complaint_address.destroy
    respond_to do |format|
      format.html { redirect_to complaint_addresses_url, notice: 'Complaint address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint_address
      @complaint_address = ComplaintAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_address_params
      params.require(:complaint_address).permit(:nome, :state_id)
    end
end
