json.extract! purchase, :id, :name, :amount, :receiver, :description, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
