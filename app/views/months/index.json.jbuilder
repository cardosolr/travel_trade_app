json.array!(@months) do |month|
  json.extract! month, :id, :name, :year_id
  json.url month_url(month, format: :json)
end
