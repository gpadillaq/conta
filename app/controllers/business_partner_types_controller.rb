class BusinessPartnerTypesController < ApplicationController
  before_action :set_business_partner_type, only: [:show, :edit, :update, :destroy]

  # GET /business_partner_types
  # GET /business_partner_types.json
  def index
    @business_partner_types = BusinessPartnerType.all
  end

  # GET /business_partner_types/1
  # GET /business_partner_types/1.json
  def show
  end

  # GET /business_partner_types/new
  def new
    @business_partner_type = BusinessPartnerType.new
  end

  # GET /business_partner_types/1/edit
  def edit
  end

  # POST /business_partner_types
  # POST /business_partner_types.json
  def create
    @business_partner_type = BusinessPartnerType.new(business_partner_type_params)

    respond_to do |format|
      if @business_partner_type.save
        format.html { redirect_to @business_partner_type, notice: 'Business partner type was successfully created.' }
        format.json { render :show, status: :created, location: @business_partner_type }
      else
        format.html { render :new }
        format.json { render json: @business_partner_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_partner_types/1
  # PATCH/PUT /business_partner_types/1.json
  def update
    respond_to do |format|
      if @business_partner_type.update(business_partner_type_params)
        format.html { redirect_to @business_partner_type, notice: 'Business partner type was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_partner_type }
      else
        format.html { render :edit }
        format.json { render json: @business_partner_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_partner_types/1
  # DELETE /business_partner_types/1.json
  def destroy
    @business_partner_type.destroy
    respond_to do |format|
      format.html { redirect_to business_partner_types_url, notice: 'Business partner type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_partner_type
      @business_partner_type = BusinessPartnerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_partner_type_params
      params.require(:business_partner_type).permit(:descripcion)
    end
end
