json.extract! customer_order, :id, :name, :address, :amount_ordered, :phoneNumber, :created_at, :updated_at
json.url customer_order_url(customer_order, format: :json)
