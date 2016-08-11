json.extract! product, :id, :description, :imei, :serie, :fecha_de_ingreso, :compra, :utilidad, :venta, :created_at, :updated_at
json.url product_url(product, format: :json)