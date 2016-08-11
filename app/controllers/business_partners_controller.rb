class BusinessPartnersController < ApplicationController
  before_action :set_business_partner, only: [:show, :edit, :update, :destroy]

  # GET /business_partners
  # GET /business_partners.json
  def index
    @business_partners = BusinessPartner.all
  end

  # GET /business_partners/1
  # GET /business_partners/1.json
  def show
  end

  # GET /business_partners/new
  def new
    @business_partner = BusinessPartner.new
  end

  # GET /business_partners/1/edit
  def edit
  end

  # POST /business_partners
  # POST /business_partners.json
  def create
    @business_partner = BusinessPartner.new(business_partner_params)

    respond_to do |format|
      if @business_partner.save
        format.html { redirect_to @business_partner, notice: 'Business partner was successfully created.' }
        format.json { render :show, status: :created, location: @business_partner }
      else
        format.html { render :new }
        format.json { render json: @business_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_partners/1
  # PATCH/PUT /business_partners/1.json
  def update
    respond_to do |format|
      if @business_partner.update(business_partner_params)
        format.html { redirect_to @business_partner, notice: 'Business partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_partner }
      else
        format.html { render :edit }
        format.json { render json: @business_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_partners/1
  # DELETE /business_partners/1.json
  def destroy
    @business_partner.destroy
    respond_to do |format|
      format.html { redirect_to business_partners_url, notice: 'Business partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_partner
      @business_partner = BusinessPartner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_partner_params
      params.require(:business_partner).permit(:nombre, :business_partner_type_id, :coin_id, :telefono, :celular, :email, :activo, :direccion, :identificador)
    end
end
