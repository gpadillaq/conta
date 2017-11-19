##
# Manejador de peticiones dirigidas a pacientes.
class BusinessPartnersController < ApplicationController
  include FormConcern

  private

  ##
  # Método de encapsulacion de los parametros permitodos en este controller.
    def business_partner_params
      params.require(:business_partner).permit(:name, :business_partner_type_id, :coin_id, :telephone, :cellphone, :email, :active, :direction, :id_number)
    end
end
