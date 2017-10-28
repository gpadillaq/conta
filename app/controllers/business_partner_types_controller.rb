##
# Manejador de peticiones dirigidas a pacientes.
class BusinessPartnerTypesController < ApplicationController
  include FormConcern

  private

  ##
  # Método de encapsulacion de los parametros permitodos en este controller.
    def business_partner_type_params
      params.require(:business_partner_type).permit(:id, :description)
    end
end
