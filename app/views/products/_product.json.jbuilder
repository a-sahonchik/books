json.extract! product, :id, :title, :description, :price, :author, :origtitle, :serie, :publisher, :year, :binding, :page, :discount, :newprice, :created_at, :updated_at
json.url product_url(product, format: :json)
