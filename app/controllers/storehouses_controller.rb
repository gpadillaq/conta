##
# Manejador de peticiones dirigidas a pacientes.
class StorehousesController < ApplicationController
  include FormConcern

  private

  ##
  # Método de encapsulacion de los parametros permitodos en este controller.
  def storehouse_params
    params.require(:storehouse).permit(:name, :storehouses_type_id, :actived)
  end
end
