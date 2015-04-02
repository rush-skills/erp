json.array!(@firms) do |firm|
  json.extract! firm, :id, :name, :financial_year, :academic_year, :service_tax_applicable, :service_tax_rate, :service_tax_number
  json.url firm_url(firm, format: :json)
end
