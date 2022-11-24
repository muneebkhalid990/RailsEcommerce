json.extract! product, :id, :name, :price, :type, :total_products, :created_at, :updated_at
json.url product_url(product, format: :json)
