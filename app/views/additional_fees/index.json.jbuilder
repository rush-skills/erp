json.array!(@additional_fees) do |additional_fee|
  json.extract! additional_fee, :id, :name, :amount
  json.url additional_fee_url(additional_fee, format: :json)
end
