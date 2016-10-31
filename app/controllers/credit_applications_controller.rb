class CreditApplicationsController < ApplicationController
  before_action :set_credit_application, only: [:show, :edit, :update, :destroy]

  # GET /credit_applications
  # GET /credit_applications.json
  def index
    @credit_applications = CreditApplication.all
  end

  # GET /credit_applications/1
  # GET /credit_applications/1.json
  def show
  end

  # GET /credit_applications/new
  def new
    @credit_application = CreditApplication.new
  end

  # GET /credit_applications/1/edit
  def edit
  end

  # POST /credit_applications
  # POST /credit_applications.json
  def create
    @credit_application = CreditApplication.new(credit_application_params)

    respond_to do |format|
      if @credit_application.save
        format.html { redirect_to @credit_application, notice: 'Credit application was successfully created.' }
        format.json { render :show, status: :created, location: @credit_application }
      else
        format.html { render :new }
        format.json { render json: @credit_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_applications/1
  # PATCH/PUT /credit_applications/1.json
  def update
    respond_to do |format|
      if @credit_application.update(credit_application_params)
        format.html { redirect_to @credit_application, notice: 'Credit application was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit_application }
      else
        format.html { render :edit }
        format.json { render json: @credit_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_applications/1
  # DELETE /credit_applications/1.json
  def destroy
    @credit_application.destroy
    respond_to do |format|
      format.html { redirect_to credit_applications_url, notice: 'Credit application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_application
      @credit_application = CreditApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_application_params
      params.require(:credit_application).permit(:business_partner_id, :fecha, :fecha_de_vencimiento, :credit_type_id, :payment_frequency_id, :payment_number, :monto, :coin_id, :nota, :status_id)
    end
end
