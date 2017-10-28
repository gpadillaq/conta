##
# Manejador de peticiones dirigidas a pacientes.
class CoinsController < ApplicationController
  include FormConcern

  private

  ##
  # Método de encapsulacion de los parametros permitodos en este controller.
    def coin_params
      params.require(:coin).permit(:id, :description, :symbol)
    end
end
